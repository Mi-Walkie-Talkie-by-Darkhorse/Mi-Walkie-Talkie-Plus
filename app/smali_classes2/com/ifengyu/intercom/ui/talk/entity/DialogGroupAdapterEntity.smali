.class public Lcom/ifengyu/intercom/ui/talk/entity/DialogGroupAdapterEntity;
.super Ljava/lang/Object;
.source "DialogGroupAdapterEntity.java"


# static fields
.field public static final STATE_IN_GROUP:I = 0x1

.field public static final STATE_LOADING:I = 0x2


# instance fields
.field private member:Lcom/shanlitech/et/model/Member;

.field private state:I


# direct methods
.method public constructor <init>(ILcom/shanlitech/et/model/Member;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/DialogGroupAdapterEntity;->state:I

    .line 3
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/talk/entity/DialogGroupAdapterEntity;->member:Lcom/shanlitech/et/model/Member;

    return-void
.end method


# virtual methods
.method public getMember()Lcom/shanlitech/et/model/Member;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/entity/DialogGroupAdapterEntity;->member:Lcom/shanlitech/et/model/Member;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/talk/entity/DialogGroupAdapterEntity;->state:I

    return v0
.end method

.method public setMember(Lcom/shanlitech/et/model/Member;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/DialogGroupAdapterEntity;->member:Lcom/shanlitech/et/model/Member;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/DialogGroupAdapterEntity;->state:I

    return-void
.end method
