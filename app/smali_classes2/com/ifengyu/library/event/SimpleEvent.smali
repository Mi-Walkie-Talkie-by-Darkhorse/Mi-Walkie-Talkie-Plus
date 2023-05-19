.class public Lcom/ifengyu/library/event/SimpleEvent;
.super Ljava/lang/Object;
.source "SimpleEvent.java"


# static fields
.field public static final ACCOUNT_LOGIN_AT_ANOTHER:I = 0x3

.field public static final BIND_DEVICE_SUCCESS:I = 0xa

.field public static final HAVE_NEW_CONTACT_APPLICATION:I = 0x14

.field public static final HAVE_NEW_JOIN_GROUP_APPLICATION:I = 0x15

.field public static final LOGIN_REFRESH_TOKEN_EXPIRE:I = 0x2

.field public static final LOOKED_NEW_APPLICATION:I = 0x16

.field public static final REGISTER_SUCCESS_AND_LOGIN:I = 0x1

.field public static final UNBIND_DEVICE_SUCCESS:I = 0xb

.field public static final UPDATE_DEVICE_SUCCESS:I = 0xc


# instance fields
.field private event:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ifengyu/library/event/SimpleEvent;->event:I

    return-void
.end method


# virtual methods
.method public getEvent()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/event/SimpleEvent;->event:I

    return v0
.end method

.method public setEvent(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/library/event/SimpleEvent;->event:I

    return-void
.end method
