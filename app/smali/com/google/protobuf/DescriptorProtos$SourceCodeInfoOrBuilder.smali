.class public interface abstract Lcom/google/protobuf/DescriptorProtos$SourceCodeInfoOrBuilder;
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
    name = "SourceCodeInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getLocation(I)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
.end method

.method public abstract getLocationCount()I
.end method

.method public abstract getLocationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocationOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$LocationOrBuilder;
.end method

.method public abstract getLocationOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$LocationOrBuilder;",
            ">;"
        }
    .end annotation
.end method
