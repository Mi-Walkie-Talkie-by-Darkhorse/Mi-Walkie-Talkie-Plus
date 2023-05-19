.class public final synthetic Lcom/shanlitech/et/notice/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:[Lcom/shanlitech/et/model/Member;

.field public final synthetic c:[J

.field public final synthetic d:[J

.field public final synthetic e:[J

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(J[Lcom/shanlitech/et/model/Member;[J[J[JII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/shanlitech/et/notice/l;->a:J

    iput-object p3, p0, Lcom/shanlitech/et/notice/l;->b:[Lcom/shanlitech/et/model/Member;

    iput-object p4, p0, Lcom/shanlitech/et/notice/l;->c:[J

    iput-object p5, p0, Lcom/shanlitech/et/notice/l;->d:[J

    iput-object p6, p0, Lcom/shanlitech/et/notice/l;->e:[J

    iput p7, p0, Lcom/shanlitech/et/notice/l;->f:I

    iput p8, p0, Lcom/shanlitech/et/notice/l;->g:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-wide v0, p0, Lcom/shanlitech/et/notice/l;->a:J

    iget-object v2, p0, Lcom/shanlitech/et/notice/l;->b:[Lcom/shanlitech/et/model/Member;

    iget-object v3, p0, Lcom/shanlitech/et/notice/l;->c:[J

    iget-object v4, p0, Lcom/shanlitech/et/notice/l;->d:[J

    iget-object v5, p0, Lcom/shanlitech/et/notice/l;->e:[J

    iget v6, p0, Lcom/shanlitech/et/notice/l;->f:I

    iget v7, p0, Lcom/shanlitech/et/notice/l;->g:I

    invoke-static/range {v0 .. v7}, Lcom/shanlitech/et/notice/EchatNoticeSender;->l(J[Lcom/shanlitech/et/model/Member;[J[J[JII)V

    return-void
.end method
