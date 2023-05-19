.class public final synthetic Lcom/shanlitech/et/notice/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/shanlitech/et/model/Group;


# direct methods
.method public synthetic constructor <init>(Lcom/shanlitech/et/model/Group;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shanlitech/et/notice/j;->a:Lcom/shanlitech/et/model/Group;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/shanlitech/et/notice/j;->a:Lcom/shanlitech/et/model/Group;

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->g(Lcom/shanlitech/et/model/Group;)V

    return-void
.end method
