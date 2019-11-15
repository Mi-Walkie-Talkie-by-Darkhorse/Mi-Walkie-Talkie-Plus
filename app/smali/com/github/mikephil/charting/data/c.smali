.class public abstract Lcom/github/mikephil/charting/data/c;
.super Lcom/github/mikephil/charting/data/DataSet;
.source "BarLineScatterCandleBubbleDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/e/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Lcom/github/mikephil/charting/data/DataSet",
        "<TT;>;",
        "Lcom/github/mikephil/charting/e/b/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/DataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/16 v0, 0xff

    const/16 v1, 0xbb

    const/16 v2, 0x73

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/c;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/c;->a:I

    return v0
.end method
