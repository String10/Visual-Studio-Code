#pragma once

class Polynomial {
private:
    int* coefficient_array;
    char* original_expr;
    // TODO: add more 
public:
    Polynomial(const char*);
    Polynomial(const Polynomial&);
    ~Polynomial();
    char* getOriginal();
    void printHighest();
    void printExpression();
    int computeValue(int x1);
    Polynomial operator + (const Polynomial&) const;
    Polynomial operator - (const Polynomial&) const;
    void operator = (const Polynomial&);
    bool operator == (const Polynomial&) const;
};