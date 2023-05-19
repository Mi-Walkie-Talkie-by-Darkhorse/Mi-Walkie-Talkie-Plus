.class public final synthetic Lcom/shanlitech/et/core/c/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/shanlitech/et/b/a;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/shanlitech/et/core/c/c;->a:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/shanlitech/et/model/Group;)Z
    .locals 2

    iget-wide v0, p0, Lcom/shanlitech/et/core/c/c;->a:J

    invoke-static {v0, v1, p1}, Lcom/shanlitech/et/core/c/l;->L(JLcom/shanlitech/et/model/Group;)Z

    move-result p1

    return p1
.end method
