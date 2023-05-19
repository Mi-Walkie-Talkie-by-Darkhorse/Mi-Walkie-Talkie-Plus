.class public final synthetic Lcom/shanlitech/et/notice/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/shanlitech/et/notice/k;->a:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-wide v0, p0, Lcom/shanlitech/et/notice/k;->a:J

    invoke-static {v0, v1}, Lcom/shanlitech/et/notice/EchatNoticeSender;->m(J)V

    return-void
.end method
