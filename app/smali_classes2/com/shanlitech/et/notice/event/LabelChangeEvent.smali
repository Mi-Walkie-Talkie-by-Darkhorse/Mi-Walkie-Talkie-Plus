.class public Lcom/shanlitech/et/notice/event/LabelChangeEvent;
.super Ljava/lang/Object;
.source "LabelChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;
    }
.end annotation


# instance fields
.field private changeType:Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

.field private labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shanlitech/et/web/tob/api/model/Label;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangeType()Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/LabelChangeEvent;->changeType:Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

    return-object v0
.end method

.method public getLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/web/tob/api/model/Label;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/LabelChangeEvent;->labels:Ljava/util/List;

    return-object v0
.end method

.method public setChangeType(Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/LabelChangeEvent;->changeType:Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

    return-void
.end method

.method public setLabels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/web/tob/api/model/Label;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/LabelChangeEvent;->labels:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LabelChangeEvent{changeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/LabelChangeEvent;->changeType:Lcom/shanlitech/et/notice/event/LabelChangeEvent$ChangeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", labels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/LabelChangeEvent;->labels:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
