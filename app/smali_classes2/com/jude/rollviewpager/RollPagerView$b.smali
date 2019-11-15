.class Lcom/jude/rollviewpager/RollPagerView$b;
.super Landroid/database/DataSetObserver;
.source "RollPagerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jude/rollviewpager/RollPagerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/jude/rollviewpager/RollPagerView;


# direct methods
.method private constructor <init>(Lcom/jude/rollviewpager/RollPagerView;)V
    .locals 0

    iput-object p1, p0, Lcom/jude/rollviewpager/RollPagerView$b;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jude/rollviewpager/RollPagerView;Lcom/jude/rollviewpager/RollPagerView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jude/rollviewpager/RollPagerView$b;-><init>(Lcom/jude/rollviewpager/RollPagerView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView$b;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-static {v0}, Lcom/jude/rollviewpager/RollPagerView;->j(Lcom/jude/rollviewpager/RollPagerView;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView$b;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-static {v0}, Lcom/jude/rollviewpager/RollPagerView;->j(Lcom/jude/rollviewpager/RollPagerView;)V

    return-void
.end method
