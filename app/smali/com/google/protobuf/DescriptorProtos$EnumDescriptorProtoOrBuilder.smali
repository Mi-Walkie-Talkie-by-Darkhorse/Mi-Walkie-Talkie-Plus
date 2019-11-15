.class public interface abstract Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;
.super Ljava/lang/Object;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EnumDescriptorProtoOrBuilder"
.end annotation


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getOptions()Lcom/google/protobuf/DescriptorProtos$EnumOptions;
.end method

.method public abstract getOptionsOrBuilder()Lcom/google/protobuf/DescriptorProtos$EnumOptionsOrBuilder;
.end method

.method public abstract getValue(I)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
.end method

.method public abstract getValueCount()I
.end method

.method public abstract getValueList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getValueOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;
.end method

.method public abstract getValueOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasName()Z
.end method

.method public abstract hasOptions()Z
.end method
