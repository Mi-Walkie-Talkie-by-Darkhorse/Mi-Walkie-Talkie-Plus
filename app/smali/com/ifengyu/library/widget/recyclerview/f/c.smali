.class public final Lcom/ifengyu/library/widget/recyclerview/f/c;
.super Lcom/ifengyu/library/widget/recyclerview/f/a;
.source "SimpleLoadMoreView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    sget v0, Lcom/ifengyu/library/R$layout;->simple_load_more:I

    return v0
.end method

.method protected d()I
    .locals 1

    sget v0, Lcom/ifengyu/library/R$id;->load_more_loading_view:I

    return v0
.end method

.method protected e()I
    .locals 1

    sget v0, Lcom/ifengyu/library/R$id;->load_more_load_fail_view:I

    return v0
.end method

.method protected f()I
    .locals 1

    sget v0, Lcom/ifengyu/library/R$id;->load_more_load_end_view:I

    return v0
.end method
