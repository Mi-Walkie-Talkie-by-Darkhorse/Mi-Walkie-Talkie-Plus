.class public Lorg/bouncycastle/util/test/TestFailedException;
.super Ljava/lang/RuntimeException;


# instance fields
.field private _result:Lorg/bouncycastle/util/test/TestResult;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/util/test/TestResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/util/test/TestFailedException;->_result:Lorg/bouncycastle/util/test/TestResult;

    return-void
.end method


# virtual methods
.method public getResult()Lorg/bouncycastle/util/test/TestResult;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/util/test/TestFailedException;->_result:Lorg/bouncycastle/util/test/TestResult;

    return-object v0
.end method
