.class public Lcom/qmuiteam/qmui/c/i/b;
.super Ljava/lang/Object;
.source "QMUISkinSimpleDefaultAttrProvider.java"

# interfaces
.implements Lcom/qmuiteam/qmui/c/i/a;


# instance fields
.field private a:La/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La/b/g;

    invoke-direct {v0}, La/b/g;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/c/i/b;->a:La/b/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/i/b;->a:La/b/g;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getDefaultSkinAttrs()La/b/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/i/b;->a:La/b/g;

    return-object v0
.end method
