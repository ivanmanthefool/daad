import 'package:daad/lexer/lexer.dart';
import 'package:daad/token.dart';

typedef tests = Map<TokenType, String>;

class LexerTest {
  static void testNextToke() {
    String input = "=+(){},;";

    List<Token> tests = [
      Token(TokenType.ASSIGN, "="),
      Token(TokenType.PLUS, "+"),
      Token(TokenType.LPAREN, "("),
      Token(TokenType.RPAREN, ")"),
      Token(TokenType.LBRACE, "{"),
      Token(TokenType.RBRACE, "}"),
      Token(TokenType.COMMA, ","),
      Token(TokenType.SEMICOLON, ";"),
      Token(TokenType.EOF, ""),
    ];

    final afterLexing = Lexer.New(input);
    int counter = 0;
    for (Token i in tests) {
      final Token tokenToBeTested = afterLexing.nextToken();
      if (tokenToBeTested.tokenType != i.tokenType) {
        throw ("tests $counter] - tokentype wrong. expected=${i.tokenType}, got=${tokenToBeTested.tokenType}");
      }
      if (tokenToBeTested.literal != i.literal) {
        throw ("tests $counter] - literal wrong. expected=${i.literal}, got=${tokenToBeTested.literal}");
      }
      counter++;
    }

    print("passed well");
  }
}

void main() {
  LexerTest.testNextToke();
}
