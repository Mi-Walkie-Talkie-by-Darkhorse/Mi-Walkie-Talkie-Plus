.class public Lcom/xiaomi/mediaprocess/MediaTrim;
.super Ljava/lang/Object;
.source "MediaTrim.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MediaTrim"

    sput-object v0, Lcom/xiaomi/mediaprocess/MediaTrim;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MediaTrim(Ljava/lang/String;Ljava/lang/String;JJ)I
    .locals 2

    sget-object v0, Lcom/xiaomi/mediaprocess/MediaTrim;->TAG:Ljava/lang/String;

    const-string v1, "MediaTrim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p5}, Lcom/xiaomi/mediaprocess/MediaTrim;->MediaTrimJni(Ljava/lang/String;Ljava/lang/String;JJ)I

    move-result v0

    return v0
.end method

.method private static native MediaTrimJni(Ljava/lang/String;Ljava/lang/String;JJ)I
.end method
