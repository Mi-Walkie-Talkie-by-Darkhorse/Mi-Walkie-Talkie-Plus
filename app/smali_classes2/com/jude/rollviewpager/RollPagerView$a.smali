.class Lcom/jude/rollviewpager/RollPagerView$a;
.super Ljava/lang/Object;
.source "RollPagerView.java"

# interfaces
.implements Lcom/jude/rollviewpager/RollPagerView$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jude/rollviewpager/RollPagerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/jude/rollviewpager/RollPagerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILcom/jude/rollviewpager/a;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    invoke-interface {p3, p1, p2}, Lcom/jude/rollviewpager/a;->a(II)V

    :cond_0
    return-void
.end method

.method public b(ILcom/jude/rollviewpager/a;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2, p1}, Lcom/jude/rollviewpager/a;->setCurrent(I)V

    :cond_0
    return-void
.end method
