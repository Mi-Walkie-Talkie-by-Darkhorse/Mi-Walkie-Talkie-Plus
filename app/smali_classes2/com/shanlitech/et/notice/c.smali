.class public final synthetic Lcom/shanlitech/et/notice/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:[Lcom/shanlitech/et/model/GroupInvitation;

.field public final synthetic b:[J


# direct methods
.method public synthetic constructor <init>([Lcom/shanlitech/et/model/GroupInvitation;[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shanlitech/et/notice/c;->a:[Lcom/shanlitech/et/model/GroupInvitation;

    iput-object p2, p0, Lcom/shanlitech/et/notice/c;->b:[J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/shanlitech/et/notice/c;->a:[Lcom/shanlitech/et/model/GroupInvitation;

    iget-object v1, p0, Lcom/shanlitech/et/notice/c;->b:[J

    invoke-static {v0, v1}, Lcom/shanlitech/et/notice/EchatNoticeSender;->h([Lcom/shanlitech/et/model/GroupInvitation;[J)V

    return-void
.end method
