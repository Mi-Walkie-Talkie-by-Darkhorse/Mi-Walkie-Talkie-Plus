.class public Lb/a/a/a/g/d;
.super Lb/a/a/a/g/f$a;


# static fields
.field private static e:Lb/a/a/a/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/a/a/g/f<",
            "Lb/a/a/a/g/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:D

.field public d:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lb/a/a/a/g/d;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lb/a/a/a/g/d;-><init>(DD)V

    const/16 v1, 0x40

    invoke-static {v1, v0}, Lb/a/a/a/g/f;->a(ILb/a/a/a/g/f$a;)Lb/a/a/a/g/f;

    move-result-object v0

    sput-object v0, Lb/a/a/a/g/d;->e:Lb/a/a/a/g/f;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lb/a/a/a/g/f;->a(F)V

    return-void
.end method

.method private constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Lb/a/a/a/g/f$a;-><init>()V

    iput-wide p1, p0, Lb/a/a/a/g/d;->c:D

    iput-wide p3, p0, Lb/a/a/a/g/d;->d:D

    return-void
.end method

.method public static a(DD)Lb/a/a/a/g/d;
    .locals 1

    sget-object v0, Lb/a/a/a/g/d;->e:Lb/a/a/a/g/f;

    invoke-virtual {v0}, Lb/a/a/a/g/f;->a()Lb/a/a/a/g/f$a;

    move-result-object v0

    check-cast v0, Lb/a/a/a/g/d;

    iput-wide p0, v0, Lb/a/a/a/g/d;->c:D

    iput-wide p2, v0, Lb/a/a/a/g/d;->d:D

    return-object v0
.end method

.method public static a(Lb/a/a/a/g/d;)V
    .locals 1

    sget-object v0, Lb/a/a/a/g/d;->e:Lb/a/a/a/g/f;

    invoke-virtual {v0, p0}, Lb/a/a/a/g/f;->a(Lb/a/a/a/g/f$a;)V

    return-void
.end method


# virtual methods
.method protected a()Lb/a/a/a/g/f$a;
    .locals 3

    new-instance v0, Lb/a/a/a/g/d;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lb/a/a/a/g/d;-><init>(DD)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MPPointD, x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lb/a/a/a/g/d;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lb/a/a/a/g/d;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
