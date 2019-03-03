#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.14
# from Racc grammer file "".
#

require 'racc/parser.rb'


require "halunke/tokenizer"
require "halunke/nodes"

module Halunke
  class Parser < Racc::Parser

module_eval(<<'...end grammar.y/module_eval...', 'grammar.y', 50)

def parse(code)
  @tokens = Tokenizer.new.tokenize(code)
  do_parse
end

def next_token
  @tokens.shift
end
...end grammar.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
     4,     5,     6,    10,    13,     9,    21,     7,    11,    22,
    12,    23,     8,     4,     5,     6,    10,    26,     9,    27,
     7,    11,    28,    12,    29,     8,     4,     5,     6,    10,
    31,     9,   nil,     7,    11,   nil,    12,   nil,     8,     4,
     5,     6,    10,   nil,     9,   nil,     7,    11,   nil,    12,
    17,     8,     4,     5,     6,    10,   nil,     9,   nil,     7,
    11,   nil,    12,   nil,     8,     4,     5,     6,    10,   nil,
     9,   nil,     7,    11,   nil,    12,   nil,     8,     4,     5,
     6,    10,   nil,     9,   nil,     7,    11,   nil,    12,   nil,
     8,     4,     5,     6,    10,   nil,     9,   nil,     7,    11,
   nil,    12,   nil,     8,     4,     5,     6,    10,   nil,     9,
   nil,     7,    11,   nil,    12,   nil,     8,     4,     5,     6,
    10,   nil,     9,   nil,     7,    11,   nil,    12,   nil,     8 ]

racc_action_check = [
     0,     0,     0,     0,     1,     0,    13,     0,     0,    15,
     0,    16,     0,     3,     3,     3,     3,    19,     3,    20,
     3,     3,    24,     3,    25,     3,     8,     8,     8,     8,
    30,     8,   nil,     8,     8,   nil,     8,   nil,     8,     9,
     9,     9,     9,   nil,     9,   nil,     9,     9,   nil,     9,
     9,     9,    10,    10,    10,    10,   nil,    10,   nil,    10,
    10,   nil,    10,   nil,    10,    11,    11,    11,    11,   nil,
    11,   nil,    11,    11,   nil,    11,   nil,    11,    12,    12,
    12,    12,   nil,    12,   nil,    12,    12,   nil,    12,   nil,
    12,    17,    17,    17,    17,   nil,    17,   nil,    17,    17,
   nil,    17,   nil,    17,    18,    18,    18,    18,   nil,    18,
   nil,    18,    18,   nil,    18,   nil,    18,    28,    28,    28,
    28,   nil,    28,   nil,    28,    28,   nil,    28,   nil,    28 ]

racc_action_pointer = [
    -2,     4,   nil,    11,   nil,   nil,   nil,   nil,    24,    37,
    50,    63,    76,     6,   nil,    -6,     3,    89,   102,     6,
     8,   nil,   nil,   nil,     9,    18,   nil,   nil,   115,   nil,
    22,   nil ]

racc_action_default = [
    -2,   -14,    -1,    -2,    -4,    -5,    -6,    -7,    -2,    -2,
   -14,    -2,    -2,   -14,    -3,   -14,   -14,    -2,    -2,   -14,
   -14,    32,    -8,    -9,   -14,   -14,   -12,   -13,    -2,   -11,
   -14,   -10 ]

racc_goto_table = [
     2,     1,    18,    14,   nil,   nil,   nil,   nil,    15,    16,
   nil,    19,    20,   nil,   nil,   nil,   nil,    24,    25,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    30 ]

racc_goto_check = [
     2,     1,     3,     2,   nil,   nil,   nil,   nil,     2,     2,
   nil,     2,     2,   nil,   nil,   nil,   nil,     2,     2,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,     2 ]

racc_goto_pointer = [
   nil,     1,     0,    -8 ]

racc_goto_default = [
   nil,   nil,   nil,     3 ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 17, :_reduce_1,
  0, 18, :_reduce_2,
  2, 18, :_reduce_3,
  1, 19, :_reduce_4,
  1, 19, :_reduce_5,
  1, 19, :_reduce_6,
  1, 19, :_reduce_7,
  3, 19, :_reduce_8,
  3, 19, :_reduce_9,
  6, 19, :_reduce_10,
  4, 19, :_reduce_11,
  3, 19, :_reduce_12,
  3, 19, :_reduce_13 ]

racc_reduce_n = 14

racc_shift_n = 32

racc_token_table = {
  false => 0,
  :error => 1,
  :NUMBER => 2,
  :STRING => 3,
  :BAREWORD => 4,
  :OPEN_PAREN => 5,
  :CLOSE_PAREN => 6,
  :OPEN_CURLY => 7,
  :CLOSE_CURLY => 8,
  :UNASSIGNED_BAREWORD => 9,
  :OPEN_BRACKET => 10,
  :CLOSE_BRACKET => 11,
  :OPEN_DICT_BRACKET => 12,
  :BAR => 13,
  :START_COMMENT => 14,
  :END_COMMENT => 15 }

racc_nt_base = 16

racc_use_result_var = false

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "NUMBER",
  "STRING",
  "BAREWORD",
  "OPEN_PAREN",
  "CLOSE_PAREN",
  "OPEN_CURLY",
  "CLOSE_CURLY",
  "UNASSIGNED_BAREWORD",
  "OPEN_BRACKET",
  "CLOSE_BRACKET",
  "OPEN_DICT_BRACKET",
  "BAR",
  "START_COMMENT",
  "END_COMMENT",
  "$start",
  "Program",
  "Expressions",
  "Expression" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'grammar.y', 21)
  def _reduce_1(val, _values)
     val[0] 
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 25)
  def _reduce_2(val, _values)
     Nodes.new([]) 
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 26)
  def _reduce_3(val, _values)
     Nodes.new([val[0]].concat(val[1].nodes)) 
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 30)
  def _reduce_4(val, _values)
     NumberNode.new(val[0]) 
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 31)
  def _reduce_5(val, _values)
     StringNode.new(val[0]) 
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 32)
  def _reduce_6(val, _values)
     BarewordNode.new(val[0]) 
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 33)
  def _reduce_7(val, _values)
     UnassignedNode.new(BarewordNode.new(val[0])) 
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 34)
  def _reduce_8(val, _values)
     Nodes.new([]) 
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 35)
  def _reduce_9(val, _values)
     FunctionNode.new(ArrayNode.new([]), val[1]) 
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 36)
  def _reduce_10(val, _values)
     FunctionNode.new(val[2].to_array, val[4]) 
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 37)
  def _reduce_11(val, _values)
     MessageSendNode.new(val[1], val[2].to_message) 
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 38)
  def _reduce_12(val, _values)
     val[1].to_array 
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 39)
  def _reduce_13(val, _values)
     val[1].to_dictionary 
  end
.,.,

def _reduce_none(val, _values)
  val[0]
end

  end   # class Parser
  end   # module Halunke
