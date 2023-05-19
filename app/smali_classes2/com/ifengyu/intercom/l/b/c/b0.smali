.class public final synthetic Lcom/ifengyu/intercom/l/b/c/b0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/l/b/c/u1;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/l/b/c/u1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/c/b0;->a:Lcom/ifengyu/intercom/l/b/c/u1;

    iput p2, p0, Lcom/ifengyu/intercom/l/b/c/b0;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/b0;->a:Lcom/ifengyu/intercom/l/b/c/u1;

    iget v1, p0, Lcom/ifengyu/intercom/l/b/c/b0;->b:I

    check-cast p1, Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/l/b/c/u1;->o3(ILcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V

    return-void
.end method
