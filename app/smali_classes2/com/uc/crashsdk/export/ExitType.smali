.class public Lcom/uc/crashsdk/export/ExitType;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final ANR_BACKGROUND_CRASH:I = 0x10

.field public static final ANR_FOREGROUND_CRASH:I = 0xf

.field public static final BACKGROUND_CAUGHT_CRASH:I = 0x3

.field public static final BACKGROUND_UNCAUGHT_CRASH:I = 0x6

.field public static final FOREGROUND_CAUGHT_CRASH:I = 0x2

.field public static final FOREGROUND_UNCAUGHT_CRASH:I = 0x5

.field public static final JAVA_BACKGROUND_CRASH:I = 0xc

.field public static final JAVA_FOREGROUND_CRASH:I = 0xb

.field public static final NATIVE_BACKGROUND_CRASH:I = 0xe

.field public static final NATIVE_FOREGROUND_CRASH:I = 0xd

.field public static final NORMAL_EXIT:I = 0x1

.field public static final UNEXP_BACKGROUND_CRASH:I = 0x62

.field public static final UNEXP_FOREGROUND_CRASH:I = 0x61

.field public static final UNEXP_REASON_ANR:I = 0x67

.field public static final UNEXP_REASON_EXIT:I = 0x68

.field public static final UNEXP_REASON_KILL_PROCESS:I = 0x69

.field public static final UNEXP_REASON_LOW_MEMORY:I = 0x6b

.field public static final UNEXP_REASON_NONE:I = 0x64

.field public static final UNEXP_REASON_PENDING:I = 0x65

.field public static final UNEXP_REASON_RESTART:I = 0x6a

.field public static final UNEXP_REASON_UNKNOWN:I = 0x66

.field public static final UNKNOWN_GROUND_CAUGHT_CRASH:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
