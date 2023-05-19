.class public final synthetic Lcom/ifengyu/intercom/ui/talk/z;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/talk/z2;

.field public final synthetic b:Lcom/shanlitech/et/model/Group;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/talk/z2;Lcom/shanlitech/et/model/Group;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/z;->a:Lcom/ifengyu/intercom/ui/talk/z2;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/talk/z;->b:Lcom/shanlitech/et/model/Group;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/z;->a:Lcom/ifengyu/intercom/ui/talk/z2;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/z;->b:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/talk/z2;->P3(Lcom/shanlitech/et/model/Group;)V

    return-void
.end method
