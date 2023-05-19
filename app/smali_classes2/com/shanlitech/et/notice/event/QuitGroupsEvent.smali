.class public Lcom/shanlitech/et/notice/event/QuitGroupsEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "QuitGroupsEvent.java"


# instance fields
.field private error_count:I

.field private error_gids:[J

.field private quit_count:I

.field private quit_gids:[J

.field private result:I


# direct methods
.method public constructor <init>(II[JI[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    iput p1, p0, Lcom/shanlitech/et/notice/event/QuitGroupsEvent;->result:I

    .line 3
    iput p2, p0, Lcom/shanlitech/et/notice/event/QuitGroupsEvent;->quit_count:I

    .line 4
    iput-object p3, p0, Lcom/shanlitech/et/notice/event/QuitGroupsEvent;->quit_gids:[J

    .line 5
    iput p4, p0, Lcom/shanlitech/et/notice/event/QuitGroupsEvent;->error_count:I

    .line 6
    iput-object p5, p0, Lcom/shanlitech/et/notice/event/QuitGroupsEvent;->error_gids:[J

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/notice/event/QuitGroupsEvent;->result:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{DestroyGroups:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/notice/event/QuitGroupsEvent;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "quitCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/notice/event/QuitGroupsEvent;->quit_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "errorCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/notice/event/QuitGroupsEvent;->error_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
