.class Lcom/jude/rollviewpager/d/a$b;
.super Ljava/lang/Object;
.source "LoopPagerAdapter.java"

# interfaces
.implements Lcom/jude/rollviewpager/RollPagerView$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jude/rollviewpager/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/jude/rollviewpager/d/a;


# direct methods
.method private constructor <init>(Lcom/jude/rollviewpager/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jude/rollviewpager/d/a$b;->a:Lcom/jude/rollviewpager/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jude/rollviewpager/d/a;Lcom/jude/rollviewpager/d/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/jude/rollviewpager/d/a$b;-><init>(Lcom/jude/rollviewpager/d/a;)V

    return-void
.end method


# virtual methods
.method public a(IILcom/jude/rollviewpager/a;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 3
    iget-object p1, p0, Lcom/jude/rollviewpager/d/a$b;->a:Lcom/jude/rollviewpager/d/a;

    invoke-virtual {p1}, Lcom/jude/rollviewpager/d/a;->a()I

    move-result p1

    invoke-interface {p3, p1, p2}, Lcom/jude/rollviewpager/a;->a(II)V

    :cond_0
    return-void
.end method

.method public a(ILcom/jude/rollviewpager/a;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/jude/rollviewpager/d/a$b;->a:Lcom/jude/rollviewpager/d/a;

    invoke-virtual {v0}, Lcom/jude/rollviewpager/d/a;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jude/rollviewpager/d/a$b;->a:Lcom/jude/rollviewpager/d/a;

    invoke-virtual {v0}, Lcom/jude/rollviewpager/d/a;->a()I

    move-result v0

    rem-int/2addr p1, v0

    invoke-interface {p2, p1}, Lcom/jude/rollviewpager/a;->setCurrent(I)V

    :cond_0
    return-void
.end method
