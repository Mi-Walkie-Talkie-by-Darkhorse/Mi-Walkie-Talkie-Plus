.class public final synthetic Lcom/shanlitech/et/notice/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Z

.field public final synthetic c:Lcom/shanlitech/et/model/SLocation;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(JZLcom/shanlitech/et/model/SLocation;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/shanlitech/et/notice/g;->a:J

    iput-boolean p3, p0, Lcom/shanlitech/et/notice/g;->b:Z

    iput-object p4, p0, Lcom/shanlitech/et/notice/g;->c:Lcom/shanlitech/et/model/SLocation;

    iput-boolean p5, p0, Lcom/shanlitech/et/notice/g;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-wide v0, p0, Lcom/shanlitech/et/notice/g;->a:J

    iget-boolean v2, p0, Lcom/shanlitech/et/notice/g;->b:Z

    iget-object v3, p0, Lcom/shanlitech/et/notice/g;->c:Lcom/shanlitech/et/model/SLocation;

    iget-boolean v4, p0, Lcom/shanlitech/et/notice/g;->d:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/shanlitech/et/notice/EchatNoticeSender;->d(JZLcom/shanlitech/et/model/SLocation;Z)V

    return-void
.end method
