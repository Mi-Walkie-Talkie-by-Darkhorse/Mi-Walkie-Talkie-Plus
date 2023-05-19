.class public Lcom/huawei/hms/mlsdk/common/MLException;
.super Ljava/lang/Exception;
.source "MLException.java"


# static fields
.field public static final ANALYSIS_FAILURE:I = 0xb

.field public static final AUTHENTICATION_REQUIRED:I = 0xf

.field public static final DATA_MISSING:I = 0xe

.field public static final DISCARDED:I = 0x1

.field public static final DUPLICATE_FOUND:I = 0x8

.field public static final EXCEED_RANGE:I = 0xd

.field public static final HASH_MISS:I = 0x12

.field public static final ILLEGAL_PARAMETER:I = 0x5

.field public static final INACTIVE:I = 0x3

.field public static final INNER:I = 0x2

.field public static final INSUFFICIENT_RESOURCE:I = 0xa

.field public static final INSUFFICIENT_SPACE:I = 0x11

.field public static final INTERRUPTED:I = 0xc

.field public static final NOT_SUPPORTED:I = 0x4

.field public static final NO_FOUND:I = 0x7

.field public static final NO_PERMISSION:I = 0x9

.field public static final OVERDUE:I = 0x6

.field public static final SUCCESS:I = 0x0

.field public static final TFLITE_NOT_COMPATIBLE:I = 0x10

.field public static final TOKEN_INVALID:I = 0x13

.field public static final UNKNOWN:I = -0x1


# instance fields
.field private final code:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput p2, p0, Lcom/huawei/hms/mlsdk/common/MLException;->code:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iput p2, p0, Lcom/huawei/hms/mlsdk/common/MLException;->code:I

    return-void
.end method


# virtual methods
.method public getErrCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/mlsdk/common/MLException;->code:I

    return v0
.end method
