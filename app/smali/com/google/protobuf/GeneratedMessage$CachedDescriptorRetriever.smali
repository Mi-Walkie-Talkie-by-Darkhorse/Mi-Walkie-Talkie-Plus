.class abstract Lcom/google/protobuf/GeneratedMessage$CachedDescriptorRetriever;
.super Ljava/lang/Object;
.source "GeneratedMessage.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CachedDescriptorRetriever"
.end annotation


# instance fields
.field private volatile descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$CachedDescriptorRetriever;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$CachedDescriptorRetriever;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$CachedDescriptorRetriever;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$CachedDescriptorRetriever;->loadDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage$CachedDescriptorRetriever;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$CachedDescriptorRetriever;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected abstract loadDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;
.end method
