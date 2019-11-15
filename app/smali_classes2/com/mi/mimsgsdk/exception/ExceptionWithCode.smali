.class public Lcom/mi/mimsgsdk/exception/ExceptionWithCode;
.super Ljava/lang/Throwable;
.source "ExceptionWithCode.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private code:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    iput p1, p0, Lcom/mi/mimsgsdk/exception/ExceptionWithCode;->code:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/mi/mimsgsdk/exception/ExceptionWithCode;->code:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/exception/ExceptionWithCode;->code:I

    return v0
.end method
