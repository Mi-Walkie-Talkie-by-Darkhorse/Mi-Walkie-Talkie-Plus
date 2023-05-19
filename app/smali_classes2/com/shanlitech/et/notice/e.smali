.class public final synthetic Lcom/shanlitech/et/notice/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:[Lcom/shanlitech/et/model/User;


# direct methods
.method public synthetic constructor <init>([Lcom/shanlitech/et/model/User;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shanlitech/et/notice/e;->a:[Lcom/shanlitech/et/model/User;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/shanlitech/et/notice/e;->a:[Lcom/shanlitech/et/model/User;

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->n([Lcom/shanlitech/et/model/User;)V

    return-void
.end method
