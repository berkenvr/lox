package lox;

class Token {
    TokenType type;

    Token(TokenType type) {
        this.type = type;
    }

    public String toString() {
        return type + " ";
    }
}
