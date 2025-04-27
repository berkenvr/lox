package lox;

class Token {
    TokenType type;
    final int line;

    Token(TokenType type, int line) {
        this.type = type;
        this.line = line;
    }

    public String toString() {
        return line + " " + type + " ";
    }
}
