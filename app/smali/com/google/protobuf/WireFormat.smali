.class public final Lcom/google/protobuf/WireFormat;
.super Ljava/lang/Object;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/WireFormat$1;,
        Lcom/google/protobuf/WireFormat$FieldType;,
        Lcom/google/protobuf/WireFormat$JavaType;
    }
.end annotation


# static fields
.field static final MESSAGE_SET_ITEM:I = 0x1

.field static final MESSAGE_SET_ITEM_END_TAG:I

.field static final MESSAGE_SET_ITEM_TAG:I

.field static final MESSAGE_SET_MESSAGE:I = 0x3

.field static final MESSAGE_SET_MESSAGE_TAG:I

.field static final MESSAGE_SET_TYPE_ID:I = 0x2

.field static final MESSAGE_SET_TYPE_ID_TAG:I

.field static final TAG_TYPE_BITS:I = 0x3

.field static final TAG_TYPE_MASK:I = 0x7

.field public static final WIRETYPE_END_GROUP:I = 0x4

.field public static final WIRETYPE_FIXED32:I = 0x5

.field public static final WIRETYPE_FIXED64:I = 0x1

.field public static final WIRETYPE_LENGTH_DELIMITED:I = 0x2

.field public static final WIRETYPE_START_GROUP:I = 0x3

.field public static final WIRETYPE_VARINT:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-static {v1, v3}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    const/4 v0, 0x4

    invoke-static {v1, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    invoke-static {v3, v2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTagFieldNumber(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method static getTagWireType(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static makeTag(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method
