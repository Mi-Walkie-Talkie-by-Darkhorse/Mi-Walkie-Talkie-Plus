.class public Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;
.super Ljava/lang/Object;
.source "CreateCodeAdapterEntity.java"


# static fields
.field public static final TYPE_LOADING:I = 0x2

.field public static final TYPE_MEMBER:I = 0x1


# instance fields
.field private memberInfo:Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;

.field private type:I


# direct methods
.method public constructor <init>(ILcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;->type:I

    .line 3
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;->memberInfo:Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;

    return-void
.end method


# virtual methods
.method public getMemberInfo()Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;->memberInfo:Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;->type:I

    return v0
.end method

.method public setMemberInfo(Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;->memberInfo:Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;->type:I

    return-void
.end method
