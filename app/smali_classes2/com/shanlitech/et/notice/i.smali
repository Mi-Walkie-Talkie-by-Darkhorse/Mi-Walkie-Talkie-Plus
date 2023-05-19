.class public final synthetic Lcom/shanlitech/et/notice/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shanlitech/et/notice/i;->a:I

    iput-object p2, p0, Lcom/shanlitech/et/notice/i;->b:Ljava/lang/String;

    iput p3, p0, Lcom/shanlitech/et/notice/i;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/shanlitech/et/notice/i;->a:I

    iget-object v1, p0, Lcom/shanlitech/et/notice/i;->b:Ljava/lang/String;

    iget v2, p0, Lcom/shanlitech/et/notice/i;->c:I

    invoke-static {v0, v1, v2}, Lcom/shanlitech/et/notice/EchatNoticeSender;->f(ILjava/lang/String;I)V

    return-void
.end method
