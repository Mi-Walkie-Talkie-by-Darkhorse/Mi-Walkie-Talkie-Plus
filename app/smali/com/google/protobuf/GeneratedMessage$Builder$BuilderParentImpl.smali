.class Lcom/google/protobuf/GeneratedMessage$Builder$BuilderParentImpl;
.super Ljava/lang/Object;
.source "GeneratedMessage.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessage$BuilderParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessage$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BuilderParentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/protobuf/GeneratedMessage$Builder;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$Builder$BuilderParentImpl;->this$0:Lcom/google/protobuf/GeneratedMessage$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/protobuf/GeneratedMessage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder$BuilderParentImpl;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method


# virtual methods
.method public markDirty()V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$Builder$BuilderParentImpl;->this$0:Lcom/google/protobuf/GeneratedMessage$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-void
.end method
