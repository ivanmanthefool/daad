// ignore_for_file: constant_identifier_names

enum TokenType {
  ILLEGAL,
  EOF,
  IDENT,
  INT,
  ASSIGN,
  PLUS,
  COMMA,
  SEMICOLON,
  LPAREN,
  RPAREN,
  LBRACE,
  RBRACE,
  FUNCTION,
  LET
}

class Token {
  final TokenType tokenType;
  final String literal;

  const Token( this.tokenType, this.literal);
}





  // static const ILLEGAL = "ILLEGAL";
  // static const EOF = "EOF";
  // // Identifiers + literals
  // static const IDENT = "IDENT"; // add, foobar, x, y, ...
  // static const INT = "صحيح"; // 1343456
  // // Operators
  // static const ASSIGN = "=";
  // static const PLUS = "+";
  // // Delimiters
  // static const COMMA = "،";
  // static const SEMICOLON = "؛";
  // static const LPAREN = "(";
  // static const RPAREN = ")";
  // static const LBRACE = "{";
  // static const RBRACE = "}";
  // // Keywords
  // static const FUNCTION = "دالة";
  // static const LET = "اجعل";
