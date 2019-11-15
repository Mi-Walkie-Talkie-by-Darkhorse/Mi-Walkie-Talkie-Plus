.class public Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode$MatrixSet;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatrixSet"
.end annotation


# instance fields
.field private g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

.field private setJ:[I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode$MatrixSet;->g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iput-object p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode$MatrixSet;->setJ:[I

    return-void
.end method


# virtual methods
.method public getG()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode$MatrixSet;->g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.method public getSetJ()[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode$MatrixSet;->setJ:[I

    return-object v0
.end method
