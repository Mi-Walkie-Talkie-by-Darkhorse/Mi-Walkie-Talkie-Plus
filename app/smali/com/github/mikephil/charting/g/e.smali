.class public Lcom/github/mikephil/charting/g/e;
.super Lcom/github/mikephil/charting/g/f$a;
.source "MPPointF.java"


# static fields
.field public static final c:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/github/mikephil/charting/g/e;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lcom/github/mikephil/charting/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/mikephil/charting/g/f",
            "<",
            "Lcom/github/mikephil/charting/g/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:F

.field public b:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x20

    new-instance v1, Lcom/github/mikephil/charting/g/e;

    invoke-direct {v1, v2, v2}, Lcom/github/mikephil/charting/g/e;-><init>(FF)V

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/g/f;->a(ILcom/github/mikephil/charting/g/f$a;)Lcom/github/mikephil/charting/g/f;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/g/e;->f:Lcom/github/mikephil/charting/g/f;

    sget-object v0, Lcom/github/mikephil/charting/g/e;->f:Lcom/github/mikephil/charting/g/f;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/g/f;->a(F)V

    new-instance v0, Lcom/github/mikephil/charting/g/e$1;

    invoke-direct {v0}, Lcom/github/mikephil/charting/g/e$1;-><init>()V

    sput-object v0, Lcom/github/mikephil/charting/g/e;->c:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/github/mikephil/charting/g/f$a;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Lcom/github/mikephil/charting/g/f$a;-><init>()V

    iput p1, p0, Lcom/github/mikephil/charting/g/e;->a:F

    iput p2, p0, Lcom/github/mikephil/charting/g/e;->b:F

    return-void
.end method

.method public static a(FF)Lcom/github/mikephil/charting/g/e;
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/g/e;->f:Lcom/github/mikephil/charting/g/f;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/f;->a()Lcom/github/mikephil/charting/g/f$a;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/g/e;

    iput p0, v0, Lcom/github/mikephil/charting/g/e;->a:F

    iput p1, v0, Lcom/github/mikephil/charting/g/e;->b:F

    return-object v0
.end method

.method public static a(Lcom/github/mikephil/charting/g/e;)V
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/g/e;->f:Lcom/github/mikephil/charting/g/f;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/g/f;->a(Lcom/github/mikephil/charting/g/f$a;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/github/mikephil/charting/g/f$a;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/github/mikephil/charting/g/e;

    invoke-direct {v0, v1, v1}, Lcom/github/mikephil/charting/g/e;-><init>(FF)V

    return-object v0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/g/e;->a:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/g/e;->b:F

    return-void
.end method
