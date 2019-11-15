.class public Lcom/mi/mimsgsdk/voip/Speaker;
.super Ljava/lang/Object;
.source "Speaker.java"


# instance fields
.field public speaderVolume:J

.field public speakerGuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeakerUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/Speaker;->speakerGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/voip/Speaker;->speaderVolume:J

    return-wide v0
.end method

.method public setSpeakerUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/voip/Speaker;->speakerGuid:Ljava/lang/String;

    return-void
.end method

.method public setVolume(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/voip/Speaker;->speaderVolume:J

    return-void
.end method
