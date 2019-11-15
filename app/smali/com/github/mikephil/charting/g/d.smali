.class public Lcom/github/mikephil/charting/g/d;
.super Lcom/github/mikephil/charting/g/f$a;
.source "MPPointD.java"


# static fields
.field private static c:Lcom/github/mikephil/charting/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/mikephil/charting/g/f",
            "<",
            "Lcom/github/mikephil/charting/g/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:D

.field public b:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/16 v0, 0x40

    new-instance v1, Lcom/github/mikephil/charting/g/d;

    invoke-direct {v1, v2, v3, v2, v3}, Lcom/github/mikephil/charting/g/d;-><init>(DD)V

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/g/f;->a(ILcom/github/mikephil/charting/g/f$a;)Lcom/github/mikephil/charting/g/f;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/g/d;->c:Lcom/github/mikephil/charting/g/f;

    sget-object v0, Lcom/github/mikephil/charting/g/d;->c:Lcom/github/mikephil/charting/g/f;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/g/f;->a(F)V

    return-void
.end method

.method private constructor <init>(DD)V
    .locals 1

    invoke-direct {p0}, Lcom/github/mikephil/charting/g/f$a;-><init>()V

    iput-wide p1, p0, Lcom/github/mikephil/charting/g/d;->a:D

    iput-wide p3, p0, Lcom/github/mikephil/charting/g/d;->b:D

    return-void
.end method

.method public static a(DD)Lcom/github/mikephil/charting/g/d;
    .locals 2

    sget-object v0, Lcom/github/mikephil/charting/g/d;->c:Lcom/github/mikephil/charting/g/f;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/f;->a()Lcom/github/mikephil/charting/g/f$a;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/g/d;

    iput-wide p0, v0, Lcom/github/mikephil/charting/g/d;->a:D

    iput-wide p2, v0, Lcom/github/mikephil/charting/g/d;->b:D

    return-object v0
.end method

.method public static a(Lcom/github/mikephil/charting/g/d;)V
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/g/d;->c:Lcom/github/mikephil/charting/g/f;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/g/f;->a(Lcom/github/mikephil/charting/g/f$a;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/github/mikephil/charting/g/f$a;
    .locals 4

    const-wide/16 v2, 0x0

    new-instance v0, Lcom/github/mikephil/charting/g/d;

    invoke-direct {v0, v2, v3, v2, v3}, Lcom/github/mikephil/charting/g/d;-><init>(DD)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MPPointD, x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/github/mikephil/charting/g/d;->a:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/github/mikephil/charting/g/d;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
