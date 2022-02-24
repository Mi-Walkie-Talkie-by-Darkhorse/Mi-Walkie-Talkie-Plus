.class public Lb/a/a/a/g/e;
.super Lb/a/a/a/g/f$a;
.source "MPPointF.java"


# static fields
.field private static e:Lb/a/a/a/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/a/a/g/f<",
            "Lb/a/a/a/g/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:F

.field public d:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb/a/a/a/g/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lb/a/a/a/g/e;-><init>(FF)V

    const/16 v1, 0x20

    invoke-static {v1, v0}, Lb/a/a/a/g/f;->a(ILb/a/a/a/g/f$a;)Lb/a/a/a/g/f;

    move-result-object v0

    sput-object v0, Lb/a/a/a/g/e;->e:Lb/a/a/a/g/f;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 2
    invoke-virtual {v0, v1}, Lb/a/a/a/g/f;->a(F)V

    .line 3
    new-instance v0, Lb/a/a/a/g/e$a;

    invoke-direct {v0}, Lb/a/a/a/g/e$a;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/a/a/a/g/f$a;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lb/a/a/a/g/f$a;-><init>()V

    .line 3
    iput p1, p0, Lb/a/a/a/g/e;->c:F

    .line 4
    iput p2, p0, Lb/a/a/a/g/e;->d:F

    return-void
.end method

.method public static a(FF)Lb/a/a/a/g/e;
    .locals 1

    .line 1
    sget-object v0, Lb/a/a/a/g/e;->e:Lb/a/a/a/g/f;

    invoke-virtual {v0}, Lb/a/a/a/g/f;->a()Lb/a/a/a/g/f$a;

    move-result-object v0

    check-cast v0, Lb/a/a/a/g/e;

    .line 2
    iput p0, v0, Lb/a/a/a/g/e;->c:F

    .line 3
    iput p1, v0, Lb/a/a/a/g/e;->d:F

    return-object v0
.end method

.method public static a(Lb/a/a/a/g/e;)V
    .locals 1

    .line 4
    sget-object v0, Lb/a/a/a/g/e;->e:Lb/a/a/a/g/f;

    invoke-virtual {v0, p0}, Lb/a/a/a/g/f;->a(Lb/a/a/a/g/f$a;)V

    return-void
.end method


# virtual methods
.method protected a()Lb/a/a/a/g/f$a;
    .locals 2

    .line 7
    new-instance v0, Lb/a/a/a/g/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lb/a/a/a/g/e;-><init>(FF)V

    return-object v0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lb/a/a/a/g/e;->c:F

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lb/a/a/a/g/e;->d:F

    return-void
.end method
