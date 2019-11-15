.class public interface abstract Lcom/mi/milinkforgame/sdk/data/Const$ServerPort;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/data/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServerPort"
.end annotation


# static fields
.field public static final PORT_14000:I = 0x36b0

.field public static final PORT_443:I = 0x1bb

.field public static final PORT_80:I = 0x50

.field public static final PORT_8080:I = 0x1f90

.field public static final PORT_ARRAY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mi/milinkforgame/sdk/data/Const$ServerPort;->PORT_ARRAY:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1bb
        0x50
        0x1f90
        0x36b0
    .end array-data
.end method
