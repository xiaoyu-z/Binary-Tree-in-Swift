//
//  main.swift
//  Tree
//
//  Created by 郑啸宇 on 15/4/8.
//  Copyright (c) 2015年 郑啸宇. All rights reserved.
//

import Foundation

struct Tree {
    var data : Int?
    var lchild : UnsafeMutablePointer<Tree>?
    var rchild : UnsafeMutablePointer<Tree>?
}

func createTree(i:Int, n:Int)->UnsafeMutablePointer<Tree>?{//又有问号
    var p : UnsafeMutablePointer<Tree>?//又有问号
    if (i >= n) {return nil}
    p = UnsafeMutablePointer<Tree>.alloc(sizeof(Tree))
    p?.memory.data = Int(rand()) % 6 + 1//又有问号
    p?.memory.lchild = createTree(i*2+1, n)//又有问号
    p?.memory.rchild = createTree(i*2+2, n)//又有问号
    return p
}
func visited(t:UnsafeMutablePointer<Tree>){
    println(String(t.memory.data!))
}

func preOrder(t:UnsafeMutablePointer<Tree>?)
{
    if(t != nil)
    {
        visited(t!)
        preOrder(t?.memory.lchild)
        preOrder(t?.memory.rchild)
    }
}
func inOrder(t:UnsafeMutablePointer<Tree>?)
{
    if(t != nil)
    {
        inOrder(t?.memory.lchild)
        visited(t!)
        inOrder(t?.memory.rchild)
    }
}
func postOrder(t:UnsafeMutablePointer<Tree>?)
{
    if(t != nil)
    {
        postOrder(t?.memory.lchild)
        postOrder(t?.memory.rchild)
        visited(t!)
    }
}
var tree : UnsafeMutablePointer<Tree>? = createTree(0, 7)
preOrder(tree!)
println()
inOrder(tree!)
println()
postOrder(tree!)
//}
//let depth : UInt32 = 20
//var nodeNumber : Int = (1<<depth) - 1
//var tree : [Int] = [Int](count: nodeNumber, repeatedValue: 0)
//func cerateTree(){
//}
//    

//var T = Tree()
//var tree = Tree()
//func creatTree(i:Int)->Tree{
//var newT = Tree(tree)
//}
/*
void PreOrder(BiTree T){
if(T != NULL){
//访问根节点
Visit(T);
//访问左子结点
PreOrder(T->lchild);
//访问右子结点
PreOrder(T->rchild);
}
}

BTNode *dCreateBranchTree1(char array[],int i,int n)
{
BTNode *p; /*二叉树节点*/
if(i>=n)
return(NULL);
p = (BTNode *)malloc(sizeof(BTNode));
p->data = array[i];
p->lchild = dCreateBranchTree1(array,2*i+1,n);
p->rchild = dCreateBranchTree1(array,2*i+2,n);
return(p);
}
//按先序序列创建二叉树
int CreateBiTree(BiTree &T){
char data;
//按先序次序输入二叉树中结点的值（一个字符），‘#’表示空树
scanf("%c",&data);
if(data == '#'){
T = NULL;
}
else{
T = (BiTree)malloc(sizeof(BiTNode));
//生成根结点
T->data = data;
//构造左子树
CreateBiTree(T->lchild);
//构造右子树
CreateBiTree(T->rchild);
}
return 0;
}
//输出
void Visit(BiTree T){
if(T->data != '#'){
printf("%c ",T->data);
}
}
//先序遍历
void PreOrder(BiTree T){
if(T != NULL){
//访问根节点
Visit(T);
//访问左子结点
PreOrder(T->lchild);
//访问右子结点
PreOrder(T->rchild);
}
}
//中序遍历
void InOrder(BiTree T){
if(T != NULL){
//访问左子结点
InOrder(T->lchild);
//访问根节点
Visit(T);
//访问右子结点
InOrder(T->rchild);
}
}
//后序遍历
void PostOrder(BiTree T){
if(T != NULL){
//访问左子结点
PostOrder(T->lchild);
//访问右子结点
PostOrder(T->rchild);
//访问根节点
Visit(T);
}
}
}*/