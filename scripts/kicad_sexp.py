import re
def parse(text):
    tok=re.compile(r'\(|\)|"(?:\\.|[^"\\])*"|[^\s()"]+')
    stack=[[]]
    for m in tok.finditer(text):
        t=m.group(0)
        if t=='(': stack.append([])
        elif t==')':
            x=stack.pop(); stack[-1].append(x)
        else:
            stack[-1].append(t[1:-1] if t.startswith('"') else t)
    return stack[0][0]
def find(node,name):
    return [c for c in node if isinstance(c,list) and c and c[0]==name]
def walk(node,name):
    if isinstance(node,list):
        if node and node[0]==name: yield node
        for c in node: yield from walk(c,name)
def prop(sym,key):
    for p in find(sym,'property'):
        if p[1]==key: return p[2]
