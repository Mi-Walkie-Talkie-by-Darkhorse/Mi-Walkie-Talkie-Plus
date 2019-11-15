.class Lcom/jude/rollviewpager/adapter/LoopPagerAdapter$a;
.super Ljava/lang/Object;
.source "LoopPagerAdapter.java"

# interfaces
.implements Lcom/jude/rollviewpager/RollPagerView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;


# direct methods
.method private constructor <init>(Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter$a;->a:Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;Lcom/jude/rollviewpager/adapter/LoopPagerAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter$a;-><init>(Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;)V

    return-void
.end method


# virtual methods
.method public a(IILcom/jude/rollviewpager/a;)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter$a;->a:Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;

    invoke-virtual {v0}, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;->a()I

    move-result v0

    invoke-interface {p3, v0, p2}, Lcom/jude/rollviewpager/a;->a(II)V

    :cond_0
    return-void
.end method

.method public a(ILcom/jude/rollviewpager/a;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter$a;->a:Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;

    invoke-virtual {v0}, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;->a()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter$a;->a:Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;

    invoke-virtual {v0}, Lcom/jude/rollviewpager/adapter/LoopPagerAdapter;->a()I

    move-result v0

    rem-int v0, p1, v0

    invoke-interface {p2, v0}, Lcom/jude/rollviewpager/a;->setCurrent(I)V

    :cond_0
    return-void
.end method
