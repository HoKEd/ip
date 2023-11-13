package gherkin.parser;

import gherkin.FixJava;
import gherkin.Lexer;
import gherkin.Listener;
import gherkin.lexer.En;

import java.io.IOException;
import java.util.List;

public class StateMachineReader implements Listener {
    private final String machinePath;
    private List<List<String>> transitionTable;

    public StateMachineReader(String name) {
        machinePath = "/gherkin/parser/" + name + ".txt";
    }

    public List<List<String>> transitionTable() {
        Lexer lexer = new En(this);
        try {
            lexer.scan(FixJava.readResourceAsString(machinePath));
        } catch (IOException e) {
            throw new RuntimeException("Fatal error. Couldn't read " + machinePath);
        }
        return transitionTable;
    }

    public void tag(String name, int line) {
    }

    public void comment(String content, int line) {
    }

    public void feature(String keyword, String name, int line) {
    }

    public void background(String keyword, String name, int line) {
    }

    public void scenario(String keyword, String name, int line) {
    }

    public void scenario_outline(String keyword, String name, int line) {
    }

    public void examples(String keyword, String name, int line) {
    }

    public void step(String keyword, String name, int line) {
    }

    public void py_string(String string, int line) {
    }

    public void syntax_error(String name, String event, List<String> strings, int line) {
    }

    public void table(List<List<String>> rows, int line) {
        transitionTable = rows;
    }
}
