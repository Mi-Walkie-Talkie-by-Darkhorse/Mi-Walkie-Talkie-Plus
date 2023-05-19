.class public Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;
.super Ljava/lang/Object;
.source "ItemAdapterEntity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TYPE_CONTACT:I = 0x3

.field public static final TYPE_GROUP:I = 0x4

.field public static final TYPE_SECTION:I = 0x1


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;->type:I

    .line 3
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;->type:I

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;->data:Ljava/lang/Object;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;->type:I

    return-void
.end method
