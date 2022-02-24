.class public abstract Lcom/github/mikephil/charting/data/e;
.super Ljava/lang/Object;
.source "BaseEntry.java"


# instance fields
.field private a:F

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/github/mikephil/charting/data/e;->a:F

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/github/mikephil/charting/data/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/github/mikephil/charting/data/e;->a:F

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/github/mikephil/charting/data/e;->b:Ljava/lang/Object;

    .line 7
    iput p1, p0, Lcom/github/mikephil/charting/data/e;->a:F

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/github/mikephil/charting/data/e;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/mikephil/charting/data/e;->a:F

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/github/mikephil/charting/data/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public b()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/data/e;->a:F

    return v0
.end method
