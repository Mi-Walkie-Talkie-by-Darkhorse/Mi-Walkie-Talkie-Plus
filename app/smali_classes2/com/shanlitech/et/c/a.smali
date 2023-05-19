.class public final synthetic Lcom/shanlitech/et/c/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:C

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(CLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lcom/shanlitech/et/c/a;->a:C

    iput-object p2, p0, Lcom/shanlitech/et/c/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/shanlitech/et/c/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-char v0, p0, Lcom/shanlitech/et/c/a;->a:C

    iget-object v1, p0, Lcom/shanlitech/et/c/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/shanlitech/et/c/a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/shanlitech/et/c/i;->e(CLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
