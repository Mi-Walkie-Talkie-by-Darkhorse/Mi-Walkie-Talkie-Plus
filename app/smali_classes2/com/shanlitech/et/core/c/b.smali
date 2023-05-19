.class public final synthetic Lcom/shanlitech/et/core/c/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/shanlitech/et/b/a;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/shanlitech/et/core/c/b;->a:J

    iput p3, p0, Lcom/shanlitech/et/core/c/b;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/shanlitech/et/model/Group;)Z
    .locals 3

    iget-wide v0, p0, Lcom/shanlitech/et/core/c/b;->a:J

    iget v2, p0, Lcom/shanlitech/et/core/c/b;->b:I

    invoke-static {v0, v1, v2, p1}, Lcom/shanlitech/et/core/c/l;->M(JILcom/shanlitech/et/model/Group;)Z

    move-result p1

    return p1
.end method
