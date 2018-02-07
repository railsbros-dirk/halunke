require "halunke/runtime"

module Halunke
  Nodes = Struct.new(:nodes) do
    def initialize(nodes = [])
      super(nodes)
    end

    def concat(other)
      Nodes.new(nodes.concat(other.nodes))
    end

    def eval(context)
      val = nil

      nodes.each do |node|
        val = node.eval(context)
      end

      val
    end
  end

  LiteralNode = Struct.new(:value)

  class NumberNode < LiteralNode
    def eval(context)
      context["Number"].create_instance(value)
    end
  end

  class StringNode < LiteralNode
    def eval(context)
      context["String"].create_instance(value)
    end
  end

  class BarewordNode < LiteralNode
    def eval(context)
      context[value]
    end
  end

  UnassignedNode = Struct.new(:node) do
    def eval(context)
      raise "Not unassigned: #{node.value} has value #{context[node.value].inspect}" if context.key? node.value
      context["UnassignedBareword"].create_instance(node.value)
    end
  end

  FunctionNode = Struct.new(:body) do
    def eval(_context)
      HFunction.new(lambda { |context, _args|
        body.eval(context)
      })
    end
  end

  ArrayNode = Struct.new(:nodes) do
    def initialize(nodes = [])
      super(nodes)
    end

    def eval(context)
      context["Array"].create_instance(nodes.map { |node| node.eval(context) })
    end
  end

  MessageSendNode = Struct.new(:receiver, :message) do
    def eval(context)
      receiver.eval(context).receive_message(context, *message.eval(context))
    end
  end

  MessageNode = Struct.new(:nodes) do
    def eval(context)
      if nodes.length == 1
        [nodes[0].value, []]
      elsif nodes.length.even?
        name = []
        message = []
        nodes.each_slice(2) do |name_part, value|
          name.push(name_part.value)
          message.push(value.eval(context))
        end
        [name.join(" "), message]
      else
        raise "Parse Error"
      end
    end
  end
end
