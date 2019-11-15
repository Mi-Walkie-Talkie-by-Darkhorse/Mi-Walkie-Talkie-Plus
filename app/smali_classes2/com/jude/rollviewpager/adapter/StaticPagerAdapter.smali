.class public abstract Lcom/jude/rollviewpager/adapter/StaticPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "StaticPagerAdapter.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jude/rollviewpager/adapter/StaticPagerAdapter;->a:Ljava/util/ArrayList;

    return-void
.end method
