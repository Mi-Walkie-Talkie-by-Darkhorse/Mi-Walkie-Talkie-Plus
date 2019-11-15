.class public Lcom/mi/mimsgsdk/service/aidl/MiMessage;
.super Ljava/lang/Object;
.source "MiMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mi/mimsgsdk/service/aidl/MiMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public body:Lcom/mi/mimsgsdk/message/MiMsgBody;

.field public bodyType:I

.field public from:Ljava/lang/String;

.field public msgId:J

.field public msgSeq:J

.field public sendTime:I

.field public to:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage$1;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/service/aidl/MiMessage$1;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgSeq:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->sendTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->from:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->to:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->bodyType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :try_start_0
    iget v1, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->bodyType:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lcom/mi/mimsgsdk/message/DefaultBody;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/message/DefaultBody;-><init>()V

    const-string v2, "mimessage parcel can not recognize"

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/message/DefaultBody;->setTips(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/mi/mimsgsdk/message/DefaultBody;->setContent([B)V

    iput-object v1, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/mi/mimsgsdk/message/CustomBody;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/message/CustomBody;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mi/mimsgsdk/message/CustomBody;->setData([B)V

    iput-object v1, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiMessage"

    const-string v2, "parse pb failed"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    new-instance v1, Lcom/mi/mimsgsdk/message/TextBody;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/message/TextBody;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mi/mimsgsdk/message/TextBody;->decodeBody([B)V

    iput-object v1, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/mi/mimsgsdk/message/AudioBody;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/message/AudioBody;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mi/mimsgsdk/message/AudioBody;->decodeBody([B)V

    iput-object v1, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/mi/mimsgsdk/video/VideoBody;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/video/VideoBody;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mi/mimsgsdk/video/VideoBody;->decodeBody([B)V

    iput-object v1, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setBody(Lcom/mi/mimsgsdk/message/MiMsgBody;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgSeq:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->sendTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->from:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->to:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->bodyType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    invoke-interface {v0}, Lcom/mi/mimsgsdk/message/MiMsgBody;->codeBody()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    invoke-interface {v0}, Lcom/mi/mimsgsdk/message/MiMsgBody;->codeBody()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
