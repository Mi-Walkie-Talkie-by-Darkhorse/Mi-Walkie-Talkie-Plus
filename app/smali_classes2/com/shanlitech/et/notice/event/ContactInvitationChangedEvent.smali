.class public Lcom/shanlitech/et/notice/event/ContactInvitationChangedEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "ContactInvitationChangedEvent.java"


# instance fields
.field private final invitations:[Lcom/shanlitech/et/model/ContactInvitation;

.field private final removedIds:[J


# direct methods
.method public constructor <init>([Lcom/shanlitech/et/model/ContactInvitation;[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/ContactInvitationChangedEvent;->invitations:[Lcom/shanlitech/et/model/ContactInvitation;

    .line 3
    iput-object p2, p0, Lcom/shanlitech/et/notice/event/ContactInvitationChangedEvent;->removedIds:[J

    return-void
.end method


# virtual methods
.method public getInvitations()[Lcom/shanlitech/et/model/ContactInvitation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/ContactInvitationChangedEvent;->invitations:[Lcom/shanlitech/et/model/ContactInvitation;

    return-object v0
.end method

.method public getRemovedIds()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/ContactInvitationChangedEvent;->removedIds:[J

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContactInvitationChangedEvent{invitations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/ContactInvitationChangedEvent;->invitations:[Lcom/shanlitech/et/model/ContactInvitation;

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", removedIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/ContactInvitationChangedEvent;->removedIds:[J

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", evenTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/BaseEvent;->evenTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
