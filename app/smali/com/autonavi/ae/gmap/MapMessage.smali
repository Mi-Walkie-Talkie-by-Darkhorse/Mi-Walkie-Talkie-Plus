.class public abstract Lcom/autonavi/ae/gmap/MapMessage;
.super Ljava/lang/Object;
.source "MapMessage.java"


# static fields
.field public static final GESTURE_STATE_BEGIN:I = 0x64

.field public static final GESTURE_STATE_CHANGE:I = 0x65

.field public static final GESTURE_STATE_END:I = 0x66

.field public static final MSGTYPE_NAVIOVERLAY_STATE:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getType()I
.end method
