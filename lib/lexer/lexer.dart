import 'package:daad/token.dart';

class Lexer {
  String input;
  int position = 0;
  int readPosition = 0;
  String ch = '';
  Lexer({required this.input});
  static Lexer New(String input) {
    Lexer l = Lexer(input: input);
    l.readChar();
    return l;
  }

  void readChar() {
    if (readPosition >= input.length) {
      ch = "0";
    } else {
      ch = input[readPosition];
    }
    position = readPosition;
    readPosition += 1;
  }

  Token nextToken() {
    late Token tok;

    switch (ch) {
      case '=':
        tok = Token(TokenType.ASSIGN, ch);
      case ';':
        tok = Token(TokenType.SEMICOLON, ch);
      case '(':
        tok = Token(TokenType.LPAREN, ch);
      case ')':
        tok = Token(TokenType.RPAREN, ch);
      case ',':
        tok = Token(TokenType.COMMA, ch);
      case '+':
        tok = Token(TokenType.PLUS, ch);
      case '{':
        tok = Token(TokenType.LBRACE, ch);
      case '}':
        tok = Token(TokenType.RBRACE, ch);
      case "0":
        tok = Token(TokenType.EOF, "");

       
    }
     readChar();
    return tok;
  }
}
