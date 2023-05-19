.class public abstract Lcom/chad/library/adapter/base/i;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseQuickAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0006\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008$\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000 \u00ef\u0001*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u0008\u0012\u0004\u0012\u0002H\u00020\u0004:\u0004\u00ee\u0001\u00ef\u0001B#\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006\u0012\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\u0010\u0010n\u001a\u00020o2\u0006\u0010p\u001a\u00020qH\u0002J\u0014\u0010r\u001a\u00020o2\u000c\u0008\u0001\u0010s\u001a\u00020t\"\u00020\u0006J\u0014\u0010u\u001a\u00020o2\u000c\u0008\u0001\u0010s\u001a\u00020t\"\u00020\u0006J\u0017\u0010v\u001a\u00020o2\u0008\u0008\u0001\u0010\u0007\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010wJ\u001f\u0010v\u001a\u00020o2\u0008\u0008\u0001\u0010x\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010yJ \u0010v\u001a\u00020o2\u0008\u0008\u0001\u0010x\u001a\u00020\u00062\u000c\u0010z\u001a\u0008\u0012\u0004\u0012\u00028\u00000{H\u0016J\u0018\u0010v\u001a\u00020o2\u000e\u0008\u0001\u0010z\u001a\u0008\u0012\u0004\u0012\u00028\u00000{H\u0016J%\u0010|\u001a\u00020\u00062\u0006\u0010}\u001a\u00020~2\u0008\u0008\u0002\u0010\u007f\u001a\u00020\u00062\t\u0008\u0002\u0010\u0080\u0001\u001a\u00020\u0006H\u0007J&\u0010\u0081\u0001\u001a\u00020\u00062\u0006\u0010}\u001a\u00020~2\u0008\u0008\u0002\u0010\u007f\u001a\u00020\u00062\t\u0008\u0002\u0010\u0080\u0001\u001a\u00020\u0006H\u0007J!\u0010\u0082\u0001\u001a\u00020o2\u0007\u0010\u0083\u0001\u001a\u00028\u00012\u0007\u0010\u0084\u0001\u001a\u00020\u0006H\u0014\u00a2\u0006\u0003\u0010\u0085\u0001J\t\u0010\u0086\u0001\u001a\u00020oH\u0002J\u0012\u0010\u0087\u0001\u001a\u00020o2\u0007\u0010\u0088\u0001\u001a\u00020\u0006H\u0004J \u0010\u0089\u0001\u001a\u00020o2\u0006\u0010p\u001a\u00028\u00012\u0007\u0010\u008a\u0001\u001a\u00028\u0000H$\u00a2\u0006\u0003\u0010\u008b\u0001J1\u0010\u0089\u0001\u001a\u00020o2\u0006\u0010p\u001a\u00028\u00012\u0007\u0010\u008a\u0001\u001a\u00028\u00002\u000f\u0010\u008c\u0001\u001a\n\u0012\u0005\u0012\u00030\u008e\u00010\u008d\u0001H\u0014\u00a2\u0006\u0003\u0010\u008f\u0001J\'\u0010\u0090\u0001\u001a\u0004\u0018\u00018\u00012\u000c\u0010\u0091\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u0092\u00012\u0006\u0010}\u001a\u00020~H\u0002\u00a2\u0006\u0003\u0010\u0093\u0001J\u0017\u0010\u0094\u0001\u001a\u00028\u00012\u0006\u0010}\u001a\u00020~H\u0014\u00a2\u0006\u0003\u0010\u0095\u0001J#\u0010\u0094\u0001\u001a\u00028\u00012\u0008\u0010\u0096\u0001\u001a\u00030\u0097\u00012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0014\u00a2\u0006\u0003\u0010\u0098\u0001J\r\u0010\u0099\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0018J\r\u0010\u009a\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0018J\t\u0010\u009b\u0001\u001a\u00020\u0006H\u0014J\u0011\u0010\u009c\u0001\u001a\u00020\u00062\u0006\u0010x\u001a\u00020\u0006H\u0014J\u000f\u0010\u009d\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000OH\u0007J\r\u0010\u009e\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000OJ\u001e\u0010\u009f\u0001\u001a\t\u0012\u0002\u0008\u0003\u0018\u00010\u0092\u00012\u000c\u0010\u0091\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u0092\u0001H\u0002J\u0019\u0010\u00a0\u0001\u001a\u00028\u00002\u0008\u0008\u0001\u0010x\u001a\u00020\u0006H\u0016\u00a2\u0006\u0003\u0010\u00a1\u0001J\t\u0010\u00a2\u0001\u001a\u00020\u0006H\u0016J\u0012\u0010\u00a3\u0001\u001a\u00030\u00a4\u00012\u0006\u0010x\u001a\u00020\u0006H\u0016J\u001b\u0010\u00a5\u0001\u001a\u0004\u0018\u00018\u00002\u0008\u0008\u0001\u0010x\u001a\u00020\u0006H\u0016\u00a2\u0006\u0003\u0010\u00a1\u0001J\u001a\u0010\u00a6\u0001\u001a\u00020\u00062\t\u0010\u008a\u0001\u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0003\u0010\u00a7\u0001J\u0011\u0010\u00a8\u0001\u001a\u00020\u00062\u0006\u0010x\u001a\u00020\u0006H\u0016J\t\u0010\u00a9\u0001\u001a\u0004\u0018\u00010ZJ\t\u0010\u00aa\u0001\u001a\u0004\u0018\u00010\\J\t\u0010\u00ab\u0001\u001a\u0004\u0018\u00010^J\t\u0010\u00ac\u0001\u001a\u0004\u0018\u00010`J\u001c\u0010\u00ad\u0001\u001a\u0004\u0018\u00010~2\u0006\u0010x\u001a\u00020\u00062\t\u0008\u0001\u0010\u00ae\u0001\u001a\u00020\u0006J\u0007\u0010\u00af\u0001\u001a\u00020\u0012J\u0007\u0010\u00b0\u0001\u001a\u00020\u0012J\u0007\u0010\u00b1\u0001\u001a\u00020\u0012J\u0012\u0010\u00b2\u0001\u001a\u00020\u00122\u0007\u0010\u00b3\u0001\u001a\u00020\u0006H\u0014J\u0011\u0010\u00b4\u0001\u001a\u00020o2\u0006\u0010e\u001a\u00020fH\u0016J\u001f\u0010\u00b5\u0001\u001a\u00020o2\u0006\u0010p\u001a\u00028\u00012\u0006\u0010x\u001a\u00020\u0006H\u0016\u00a2\u0006\u0003\u0010\u0085\u0001J/\u0010\u00b5\u0001\u001a\u00020o2\u0006\u0010p\u001a\u00028\u00012\u0006\u0010x\u001a\u00020\u00062\u000e\u0010\u008c\u0001\u001a\t\u0012\u0005\u0012\u00030\u008e\u00010\u0008H\u0016\u00a2\u0006\u0003\u0010\u00b6\u0001J\"\u0010\u00b7\u0001\u001a\u00028\u00012\u0008\u0010\u0096\u0001\u001a\u00030\u0097\u00012\u0007\u0010\u0084\u0001\u001a\u00020\u0006H\u0014\u00a2\u0006\u0003\u0010\u0098\u0001J\"\u0010\u00b8\u0001\u001a\u00028\u00012\u0008\u0010\u0096\u0001\u001a\u00030\u0097\u00012\u0007\u0010\u0084\u0001\u001a\u00020\u0006H\u0016\u00a2\u0006\u0003\u0010\u0098\u0001J\u0011\u0010\u00b9\u0001\u001a\u00020o2\u0006\u0010e\u001a\u00020fH\u0016J!\u0010\u00ba\u0001\u001a\u00020o2\u0007\u0010\u0083\u0001\u001a\u00028\u00012\u0007\u0010\u0084\u0001\u001a\u00020\u0006H\u0014\u00a2\u0006\u0003\u0010\u0085\u0001J\u0017\u0010\u00bb\u0001\u001a\u00020o2\u0006\u0010p\u001a\u00028\u0001H\u0016\u00a2\u0006\u0003\u0010\u00bc\u0001J\u0016\u0010\u00bd\u0001\u001a\u00020o2\u0006\u0010\u0007\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010wJ\u0013\u0010\u00bd\u0001\u001a\u00020o2\u0008\u0008\u0001\u0010x\u001a\u00020\u0006H\u0017J\u0007\u0010\u00be\u0001\u001a\u00020oJ\u0007\u0010\u00bf\u0001\u001a\u00020oJ\u0013\u0010\u00c0\u0001\u001a\u00020o2\u0008\u0008\u0001\u0010x\u001a\u00020\u0006H\u0016J\u0007\u0010\u00c1\u0001\u001a\u00020oJ\u0010\u0010\u00c2\u0001\u001a\u00020o2\u0007\u0010\u00c3\u0001\u001a\u00020~J\u0010\u0010\u00c4\u0001\u001a\u00020o2\u0007\u0010\u00c5\u0001\u001a\u00020~J\u0017\u0010\u00c6\u0001\u001a\u00020o2\u000c\u0010z\u001a\u0008\u0012\u0004\u0012\u00028\u00000{H\u0017J\u0011\u0010\u00c7\u0001\u001a\u00020o2\u0008\u0010\u00c8\u0001\u001a\u00030\u00c9\u0001J \u0010\u00ca\u0001\u001a\u00020o2\u0008\u0008\u0001\u0010\u007f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010yJ\u0017\u0010\u00cb\u0001\u001a\u00020o2\u000e\u0010\u00cc\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u00cd\u0001J\u0017\u0010\u00ce\u0001\u001a\u00020o2\u000e\u0010\u00cf\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u00d0\u0001J$\u0010\u00d1\u0001\u001a\u00020o2\n\u0008\u0001\u0010\u00d2\u0001\u001a\u00030\u00d3\u00012\r\u0010\u00d4\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0016J(\u0010\u00d1\u0001\u001a\u00020o2\u000f\u0010\u00d4\u0001\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00082\u000c\u0008\u0002\u0010\u00d5\u0001\u001a\u0005\u0018\u00010\u00d6\u0001H\u0017J\u0010\u0010\u00d7\u0001\u001a\u00020o2\u0007\u0010\u00d8\u0001\u001a\u00020~J\u000f\u0010\u00d7\u0001\u001a\u00020o2\u0006\u0010\u0005\u001a\u00020\u0006J&\u0010\u00d9\u0001\u001a\u00020\u00062\u0006\u0010}\u001a\u00020~2\u0008\u0008\u0002\u0010\u007f\u001a\u00020\u00062\t\u0008\u0002\u0010\u0080\u0001\u001a\u00020\u0006H\u0007J\u0011\u0010\u00da\u0001\u001a\u00020o2\u0006\u0010p\u001a\u00020qH\u0014J\u0012\u0010\u00db\u0001\u001a\u00020o2\t\u0010\u00dc\u0001\u001a\u0004\u0018\u00010bJ&\u0010\u00dd\u0001\u001a\u00020\u00062\u0006\u0010}\u001a\u00020~2\u0008\u0008\u0002\u0010\u007f\u001a\u00020\u00062\t\u0008\u0002\u0010\u0080\u0001\u001a\u00020\u0006H\u0007J\u001a\u0010\u00de\u0001\u001a\u00020o2\u000f\u0010\u00d4\u0001\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010{H\u0016J\u0019\u0010\u00df\u0001\u001a\u00020o2\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0008H\u0017J\u001a\u0010\u00e0\u0001\u001a\u00020o2\u000f\u0010\u00d4\u0001\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0008H\u0016J\u001a\u0010\u00e1\u0001\u001a\u00020o2\u0007\u0010\u00e2\u0001\u001a\u00020~2\u0006\u0010x\u001a\u00020\u0006H\u0014J\u0012\u0010\u00e3\u0001\u001a\u00020o2\t\u0010\u00e4\u0001\u001a\u0004\u0018\u00010ZJ\u001a\u0010\u00e5\u0001\u001a\u00020\u00122\u0007\u0010\u00e2\u0001\u001a\u00020~2\u0006\u0010x\u001a\u00020\u0006H\u0014J\u0012\u0010\u00e6\u0001\u001a\u00020o2\t\u0010\u00e4\u0001\u001a\u0004\u0018\u00010\\J\u001a\u0010\u00e7\u0001\u001a\u00020o2\u0007\u0010\u00e2\u0001\u001a\u00020~2\u0006\u0010x\u001a\u00020\u0006H\u0014J\u0012\u0010\u00e8\u0001\u001a\u00020o2\t\u0010\u00e4\u0001\u001a\u0004\u0018\u00010^J\u001a\u0010\u00e9\u0001\u001a\u00020\u00122\u0007\u0010\u00e2\u0001\u001a\u00020~2\u0006\u0010x\u001a\u00020\u0006H\u0014J\u0012\u0010\u00ea\u0001\u001a\u00020o2\t\u0010\u00e4\u0001\u001a\u0004\u0018\u00010`J\u001b\u0010\u00eb\u0001\u001a\u00020o2\u0008\u0010\u00ec\u0001\u001a\u00030\u00ed\u00012\u0006\u0010\u007f\u001a\u00020\u0006H\u0014R(\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001a\u001a\u00020\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR0\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00082\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u0011\u0010#\u001a\u00020$8F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0013\u0010\'\u001a\u0004\u0018\u00010(8F\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*R\u0013\u0010+\u001a\u0004\u0018\u00010,8F\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010.R\u0011\u0010/\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u00080\u00101R\u001a\u00102\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010\u0014\"\u0004\u00084\u0010\u0016R\u0011\u00105\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u00086\u00101R\u001a\u00107\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010\u0014\"\u0004\u00089\u0010\u0016R\u0013\u0010:\u001a\u0004\u0018\u00010,8F\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010.R\u0011\u0010<\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008=\u00101R\u001a\u0010>\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010\u0014\"\u0004\u0008@\u0010\u0016R\u0011\u0010A\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008B\u00101R\u001a\u0010C\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010\u0014\"\u0004\u0008E\u0010\u0016R\u001a\u0010F\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010\u0014\"\u0004\u0008G\u0010\u0016R\u001a\u0010H\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010\u0014\"\u0004\u0008I\u0010\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010J\u001a\u00020K8F\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010MR\u0016\u0010N\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010OX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010P\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010Q\u001a\u00020(X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010R\u001a\u00020,X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010S\u001a\u00020,X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010T\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010U\u001a\u0004\u0018\u00010KX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u0010M\"\u0004\u0008W\u0010XR\u0010\u0010Y\u001a\u0004\u0018\u00010ZX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010[\u001a\u0004\u0018\u00010\\X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010]\u001a\u0004\u0018\u00010^X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010_\u001a\u0004\u0018\u00010`X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010a\u001a\u0004\u0018\u00010bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010c\u001a\u0004\u0018\u00010dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010e\u001a\u00020f8F\u00a2\u0006\u0006\u001a\u0004\u0008g\u0010hR\"\u0010i\u001a\u0004\u0018\u00010f2\u0008\u0010\u001e\u001a\u0004\u0018\u00010f@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008j\u0010hR\u0011\u0010k\u001a\u00020d8F\u00a2\u0006\u0006\u001a\u0004\u0008l\u0010m\u00a8\u0006\u00f0\u0001"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "T",
        "VH",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "layoutResId",
        "",
        "data",
        "",
        "(ILjava/util/List;)V",
        "value",
        "Lcom/chad/library/adapter/base/animation/BaseAnimation;",
        "adapterAnimation",
        "getAdapterAnimation",
        "()Lcom/chad/library/adapter/base/animation/BaseAnimation;",
        "setAdapterAnimation",
        "(Lcom/chad/library/adapter/base/animation/BaseAnimation;)V",
        "animationEnable",
        "",
        "getAnimationEnable",
        "()Z",
        "setAnimationEnable",
        "(Z)V",
        "childClickViewIds",
        "Ljava/util/LinkedHashSet;",
        "childLongClickViewIds",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "<set-?>",
        "getData",
        "()Ljava/util/List;",
        "setData$com_github_CymChad_brvah",
        "(Ljava/util/List;)V",
        "draggableModule",
        "Lcom/chad/library/adapter/base/module/BaseDraggableModule;",
        "getDraggableModule",
        "()Lcom/chad/library/adapter/base/module/BaseDraggableModule;",
        "emptyLayout",
        "Landroid/widget/FrameLayout;",
        "getEmptyLayout",
        "()Landroid/widget/FrameLayout;",
        "footerLayout",
        "Landroid/widget/LinearLayout;",
        "getFooterLayout",
        "()Landroid/widget/LinearLayout;",
        "footerLayoutCount",
        "getFooterLayoutCount",
        "()I",
        "footerViewAsFlow",
        "getFooterViewAsFlow",
        "setFooterViewAsFlow",
        "footerViewPosition",
        "getFooterViewPosition",
        "footerWithEmptyEnable",
        "getFooterWithEmptyEnable",
        "setFooterWithEmptyEnable",
        "headerLayout",
        "getHeaderLayout",
        "headerLayoutCount",
        "getHeaderLayoutCount",
        "headerViewAsFlow",
        "getHeaderViewAsFlow",
        "setHeaderViewAsFlow",
        "headerViewPosition",
        "getHeaderViewPosition",
        "headerWithEmptyEnable",
        "getHeaderWithEmptyEnable",
        "setHeaderWithEmptyEnable",
        "isAnimationFirstOnly",
        "setAnimationFirstOnly",
        "isUseEmpty",
        "setUseEmpty",
        "loadMoreModule",
        "Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;",
        "getLoadMoreModule",
        "()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;",
        "mDiffHelper",
        "Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;",
        "mDraggableModule",
        "mEmptyLayout",
        "mFooterLayout",
        "mHeaderLayout",
        "mLastPosition",
        "mLoadMoreModule",
        "getMLoadMoreModule$com_github_CymChad_brvah",
        "setMLoadMoreModule$com_github_CymChad_brvah",
        "(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V",
        "mOnItemChildClickListener",
        "Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;",
        "mOnItemChildLongClickListener",
        "Lcom/chad/library/adapter/base/listener/OnItemChildLongClickListener;",
        "mOnItemClickListener",
        "Lcom/chad/library/adapter/base/listener/OnItemClickListener;",
        "mOnItemLongClickListener",
        "Lcom/chad/library/adapter/base/listener/OnItemLongClickListener;",
        "mSpanSizeLookup",
        "Lcom/chad/library/adapter/base/listener/GridSpanSizeLookup;",
        "mUpFetchModule",
        "Lcom/chad/library/adapter/base/module/BaseUpFetchModule;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getRecyclerView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerViewOrNull",
        "getRecyclerViewOrNull",
        "upFetchModule",
        "getUpFetchModule",
        "()Lcom/chad/library/adapter/base/module/BaseUpFetchModule;",
        "addAnimation",
        "",
        "holder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "addChildClickViewIds",
        "viewIds",
        "",
        "addChildLongClickViewIds",
        "addData",
        "(Ljava/lang/Object;)V",
        "position",
        "(ILjava/lang/Object;)V",
        "newData",
        "",
        "addFooterView",
        "view",
        "Landroid/view/View;",
        "index",
        "orientation",
        "addHeaderView",
        "bindViewClickListener",
        "viewHolder",
        "viewType",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V",
        "checkModule",
        "compatibilityDataSizeChanged",
        "size",
        "convert",
        "item",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V",
        "payloads",
        "",
        "",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V",
        "createBaseGenericKInstance",
        "z",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "createBaseViewHolder",
        "(Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "getChildClickViewIds",
        "getChildLongClickViewIds",
        "getDefItemCount",
        "getDefItemViewType",
        "getDiffHelper",
        "getDiffer",
        "getInstancedGenericKClass",
        "getItem",
        "(I)Ljava/lang/Object;",
        "getItemCount",
        "getItemId",
        "",
        "getItemOrNull",
        "getItemPosition",
        "(Ljava/lang/Object;)I",
        "getItemViewType",
        "getOnItemChildClickListener",
        "getOnItemChildLongClickListener",
        "getOnItemClickListener",
        "getOnItemLongClickListener",
        "getViewByPosition",
        "viewId",
        "hasEmptyView",
        "hasFooterLayout",
        "hasHeaderLayout",
        "isFixedViewType",
        "type",
        "onAttachedToRecyclerView",
        "onBindViewHolder",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/util/List;)V",
        "onCreateDefViewHolder",
        "onCreateViewHolder",
        "onDetachedFromRecyclerView",
        "onItemViewHolderCreated",
        "onViewAttachedToWindow",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V",
        "remove",
        "removeAllFooterView",
        "removeAllHeaderView",
        "removeAt",
        "removeEmptyView",
        "removeFooterView",
        "footer",
        "removeHeaderView",
        "header",
        "replaceData",
        "setAnimationWithDefault",
        "animationType",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;",
        "setData",
        "setDiffCallback",
        "diffCallback",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "setDiffConfig",
        "config",
        "Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;",
        "setDiffNewData",
        "diffResult",
        "Landroidx/recyclerview/widget/DiffUtil$DiffResult;",
        "list",
        "commitCallback",
        "Ljava/lang/Runnable;",
        "setEmptyView",
        "emptyView",
        "setFooterView",
        "setFullSpan",
        "setGridSpanSizeLookup",
        "spanSizeLookup",
        "setHeaderView",
        "setList",
        "setNewData",
        "setNewInstance",
        "setOnItemChildClick",
        "v",
        "setOnItemChildClickListener",
        "listener",
        "setOnItemChildLongClick",
        "setOnItemChildLongClickListener",
        "setOnItemClick",
        "setOnItemClickListener",
        "setOnItemLongClick",
        "setOnItemLongClickListener",
        "startAnim",
        "anim",
        "Landroid/animation/Animator;",
        "AnimationType",
        "Companion",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/chad/library/adapter/base/j/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/FrameLayout;

.field private n:I

.field private o:Lcom/chad/library/adapter/base/l/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:Lcom/chad/library/adapter/base/l/d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q:Lcom/chad/library/adapter/base/l/f;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private r:Lcom/chad/library/adapter/base/l/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:Lcom/chad/library/adapter/base/l/c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private t:Lcom/chad/library/adapter/base/m/g;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private u:Lcom/chad/library/adapter/base/m/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private v:Lcom/chad/library/adapter/base/m/f;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private w:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final x:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final y:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput p1, p0, Lcom/chad/library/adapter/base/i;->a:I

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/chad/library/adapter/base/i;->b:Ljava/util/List;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/i;->e:Z

    .line 5
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/i;->i:Z

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/chad/library/adapter/base/i;->n:I

    .line 7
    invoke-direct {p0}, Lcom/chad/library/adapter/base/i;->u()V

    .line 8
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/i;->x:Ljava/util/LinkedHashSet;

    .line 9
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/i;->y:Ljava/util/LinkedHashSet;

    return-void
.end method

.method private final N(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 2
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    .line 3
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const-string v1, "types"

    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    array-length v2, p1

    :cond_0
    if-ge v1, v2, :cond_2

    aget-object v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 5
    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 6
    move-object v4, v3

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    check-cast v3, Ljava/lang/Class;

    return-object v3

    .line 8
    :cond_1
    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_0

    .line 9
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 10
    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11
    check-cast v3, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/reflect/GenericSignatureFormatError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/TypeNotPresentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/MalformedParameterizedTypeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/reflect/MalformedParameterizedTypeException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/TypeNotPresentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/reflect/GenericSignatureFormatError;->printStackTrace()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic Y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/i;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/chad/library/adapter/base/i;->t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/i;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/i;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/chad/library/adapter/base/i;->r(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/i;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/i;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/chad/library/adapter/base/i;->s(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/i;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/i;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/chad/library/adapter/base/i;->q(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/i;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic e(Lcom/chad/library/adapter/base/i;)Lcom/chad/library/adapter/base/l/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/chad/library/adapter/base/i;->o:Lcom/chad/library/adapter/base/l/a;

    return-object p0
.end method

.method private final f(Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/i;->h:Z

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/i;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->getLayoutPosition()I

    move-result v0

    iget v1, p0, Lcom/chad/library/adapter/base/i;->n:I

    if-le v0, v1, :cond_3

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->j:Lcom/chad/library/adapter/base/j/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/chad/library/adapter/base/j/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/chad/library/adapter/base/j/a;-><init>(FILkotlin/jvm/internal/a;)V

    .line 4
    :cond_1
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/chad/library/adapter/base/j/b;->a(Landroid/view/View;)[Landroid/animation/Animator;

    move-result-object v0

    .line 5
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->getLayoutPosition()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/chad/library/adapter/base/i;->q0(Landroid/animation/Animator;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->getLayoutPosition()I

    move-result p1

    iput p1, p0, Lcom/chad/library/adapter/base/i;->n:I

    :cond_3
    return-void
.end method

.method public static synthetic k(Lcom/chad/library/adapter/base/i;Landroid/view/View;IIILjava/lang/Object;)I
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, -0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/i;->j(Landroid/view/View;II)I

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addFooterView"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic o(Lcom/chad/library/adapter/base/i;Landroid/view/View;IIILjava/lang/Object;)I
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, -0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/i;->n(Landroid/view/View;II)I

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addHeaderView"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final q(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/i;Landroid/view/View;)V
    .locals 1

    const-string v0, "$viewHolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->getBindingAdapterPosition()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/i;->K()I

    move-result v0

    sub-int/2addr p0, v0

    const-string v0, "v"

    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/i;->m0(Landroid/view/View;I)V

    return-void
.end method

.method private static final r(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/i;Landroid/view/View;)Z
    .locals 1

    const-string v0, "$viewHolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->getBindingAdapterPosition()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/i;->K()I

    move-result v0

    sub-int/2addr p0, v0

    const-string v0, "v"

    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/i;->n0(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method private static final s(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/i;Landroid/view/View;)V
    .locals 1

    const-string v0, "$viewHolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->getBindingAdapterPosition()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/i;->K()I

    move-result v0

    sub-int/2addr p0, v0

    const-string v0, "v"

    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/i;->o0(Landroid/view/View;I)V

    return-void
.end method

.method private static final t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/i;Landroid/view/View;)Z
    .locals 1

    const-string v0, "$viewHolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->getBindingAdapterPosition()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/i;->K()I

    move-result v0

    sub-int/2addr p0, v0

    const-string v0, "v"

    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/i;->p0(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method private final u()V
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/chad/library/adapter/base/m/i;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lcom/chad/library/adapter/base/m/i;

    invoke-interface {v0, p0}, Lcom/chad/library/adapter/base/m/i;->a(Lcom/chad/library/adapter/base/i;)Lcom/chad/library/adapter/base/m/f;

    move-result-object v0

    iput-object v0, p0, Lcom/chad/library/adapter/base/i;->v:Lcom/chad/library/adapter/base/m/f;

    .line 3
    :cond_0
    instance-of v0, p0, Lcom/chad/library/adapter/base/m/j;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p0

    check-cast v0, Lcom/chad/library/adapter/base/m/j;

    invoke-interface {v0, p0}, Lcom/chad/library/adapter/base/m/j;->a(Lcom/chad/library/adapter/base/i;)Lcom/chad/library/adapter/base/m/g;

    move-result-object v0

    iput-object v0, p0, Lcom/chad/library/adapter/base/i;->t:Lcom/chad/library/adapter/base/m/g;

    .line 5
    :cond_1
    instance-of v0, p0, Lcom/chad/library/adapter/base/m/h;

    if-eqz v0, :cond_2

    .line 6
    move-object v0, p0

    check-cast v0, Lcom/chad/library/adapter/base/m/h;

    invoke-interface {v0, p0}, Lcom/chad/library/adapter/base/m/h;->d(Lcom/chad/library/adapter/base/i;)Lcom/chad/library/adapter/base/m/e;

    move-result-object v0

    iput-object v0, p0, Lcom/chad/library/adapter/base/i;->u:Lcom/chad/library/adapter/base/m/e;

    :cond_2
    return-void
.end method

.method private final y(Ljava/lang/Class;Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/view/View;",
            ")TVH;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "null cannot be cast to non-null type VH of com.chad.library.adapter.base.BaseQuickAdapter"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Class;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v2

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    const-string v4, "z.getDeclaredConstructor\u2026aClass, View::class.java)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    aput-object p2, v0, v3

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-array v0, v3, [Ljava/lang/Class;

    .line 5
    const-class v4, Landroid/view/View;

    aput-object v4, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    const-string v0, "z.getDeclaredConstructor(View::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :goto_0
    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected A(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Lcom/chad/library/adapter/base/n/a;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/i;->z(Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final B()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->x:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public final C()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->y:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public final D()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->b:Ljava/util/List;

    return-object v0
.end method

.method protected E()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected F(I)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public final G()Lcom/chad/library/adapter/base/m/e;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->u:Lcom/chad/library/adapter/base/m/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/c;->c(Ljava/lang/Object;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please first implements DraggableModule"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final H()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->V()Z

    move-result v0

    return v0
.end method

.method public final I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/i;->g:Z

    return v0
.end method

.method public final J()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 2
    iget-boolean v1, p0, Lcom/chad/library/adapter/base/i;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->W()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/chad/library/adapter/base/i;->d:Z

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->K()I

    move-result v0

    iget-object v1, p0, Lcom/chad/library/adapter/base/i;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final K()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->W()Z

    move-result v0

    return v0
.end method

.method public final L()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/i;->f:Z

    return v0
.end method

.method public final M()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->U()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/i;->c:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    return v1
.end method

.method public O(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final P()Lcom/chad/library/adapter/base/l/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->r:Lcom/chad/library/adapter/base/l/b;

    return-object v0
.end method

.method public final Q()Lcom/chad/library/adapter/base/l/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->s:Lcom/chad/library/adapter/base/l/c;

    return-object v0
.end method

.method public final R()Lcom/chad/library/adapter/base/l/d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->p:Lcom/chad/library/adapter/base/l/d;

    return-object v0
.end method

.method public final S()Lcom/chad/library/adapter/base/l/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->q:Lcom/chad/library/adapter/base/l/f;

    return-object v0
.end method

.method public final T()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->w:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public final U()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->m:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/i;->e:Z

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0

    :cond_2
    const-string v0, "mEmptyLayout"

    .line 4
    invoke-static {v0}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final V()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->l:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "mFooterLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final W()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->k:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "mHeaderLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected X(I)Z
    .locals 1

    const v0, 0x10000555

    if-eq p1, v0, :cond_1

    const v0, 0x10000111

    if-eq p1, v0, :cond_1

    const v0, 0x10000333

    if-eq p1, v0, :cond_1

    const v0, 0x10000222

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public c0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 2
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->t:Lcom/chad/library/adapter/base/m/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/m/g;->a(I)V

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->v:Lcom/chad/library/adapter/base/m/f;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/m/f;->a(I)V

    .line 3
    :goto_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->getItemViewType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 4
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->K()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/i;->O(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/i;->w(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V

    goto :goto_2

    .line 5
    :sswitch_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->v:Lcom/chad/library/adapter/base/m/f;

    if-nez v0, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/m/f;->g()Lcom/chad/library/adapter/base/loadmore/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/m/f;->f()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0}, Lcom/chad/library/adapter/base/loadmore/a;->a(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILcom/chad/library/adapter/base/loadmore/LoadMoreStatus;)V

    nop

    :goto_2
    :sswitch_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000111 -> :sswitch_1
        0x10000222 -> :sswitch_0
        0x10000333 -> :sswitch_1
        0x10000555 -> :sswitch_1
    .end sparse-switch
.end method

.method public d0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/util/List;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/i;->c0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->t:Lcom/chad/library/adapter/base/m/g;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/m/g;->a(I)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->v:Lcom/chad/library/adapter/base/m/f;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/m/f;->a(I)V

    .line 5
    :goto_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->getItemViewType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 6
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->K()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/i;->O(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/i;->x(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_2

    .line 7
    :sswitch_0
    iget-object p3, p0, Lcom/chad/library/adapter/base/i;->v:Lcom/chad/library/adapter/base/m/f;

    if-nez p3, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {p3}, Lcom/chad/library/adapter/base/m/f;->g()Lcom/chad/library/adapter/base/loadmore/a;

    move-result-object v0

    invoke-virtual {p3}, Lcom/chad/library/adapter/base/m/f;->f()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/chad/library/adapter/base/loadmore/a;->a(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILcom/chad/library/adapter/base/loadmore/LoadMoreStatus;)V

    nop

    :goto_2
    :sswitch_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10000111 -> :sswitch_1
        0x10000222 -> :sswitch_0
        0x10000333 -> :sswitch_1
        0x10000555 -> :sswitch_1
    .end sparse-switch
.end method

.method protected e0(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p2, p0, Lcom/chad/library/adapter/base/i;->a:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/i;->A(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public f0(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/i;->e0(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/i;->p(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    .line 3
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->u:Lcom/chad/library/adapter/base/m/e;

    if-nez v0, :cond_c

    goto/16 :goto_3

    .line 4
    :sswitch_0
    iget-object p1, p0, Lcom/chad/library/adapter/base/i;->m:Landroid/widget/FrameLayout;

    const-string p2, "mEmptyLayout"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 5
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 6
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/chad/library/adapter/base/i;->m:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/chad/library/adapter/base/i;->m:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/i;->z(Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    goto/16 :goto_4

    :cond_2
    invoke-static {p2}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_3
    invoke-static {p2}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    throw v0

    .line 9
    :sswitch_1
    iget-object p1, p0, Lcom/chad/library/adapter/base/i;->l:Landroid/widget/LinearLayout;

    const-string p2, "mFooterLayout"

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 10
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 11
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/chad/library/adapter/base/i;->l:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/chad/library/adapter/base/i;->l:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/i;->z(Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    goto :goto_4

    :cond_6
    invoke-static {p2}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_7
    invoke-static {p2}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    throw v0

    .line 14
    :sswitch_2
    iget-object p2, p0, Lcom/chad/library/adapter/base/i;->v:Lcom/chad/library/adapter/base/m/f;

    invoke-static {p2}, Lkotlin/jvm/internal/c;->c(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/m/f;->g()Lcom/chad/library/adapter/base/loadmore/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/loadmore/a;->b(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/i;->z(Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/chad/library/adapter/base/i;->v:Lcom/chad/library/adapter/base/m/f;

    invoke-static {p2}, Lkotlin/jvm/internal/c;->c(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/m/f;->u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    goto :goto_4

    .line 17
    :sswitch_3
    iget-object p1, p0, Lcom/chad/library/adapter/base/i;->k:Landroid/widget/LinearLayout;

    const-string p2, "mHeaderLayout"

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 18
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    .line 19
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/chad/library/adapter/base/i;->k:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2

    :cond_8
    invoke-static {p2}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/chad/library/adapter/base/i;->k:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/i;->z(Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    goto :goto_4

    :cond_a
    invoke-static {p2}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_b
    invoke-static {p2}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_c
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/m/e;->h(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 23
    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/i;->g0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    :goto_4
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000111 -> :sswitch_3
        0x10000222 -> :sswitch_2
        0x10000333 -> :sswitch_1
        0x10000555 -> :sswitch_0
    .end sparse-switch
.end method

.method public final varargs g([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 2
    iget-object v3, p0, Lcom/chad/library/adapter/base/i;->x:Ljava/util/LinkedHashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected g0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    const-string p2, "viewHolder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getItemCount()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->U()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/i;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/i;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->v:Lcom/chad/library/adapter/base/m/f;

    const/4 v2, 0x0

    if-nez v0, :cond_4

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/m/f;->j()Z

    move-result v0

    if-ne v0, v1, :cond_3

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->K()I

    move-result v0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->E()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->H()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->U()Z

    move-result v0

    const v1, 0x10000111

    const v2, 0x10000333

    if-eqz v0, :cond_5

    .line 2
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/i;->c:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v4, 0x10000555

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    :cond_1
    :goto_1
    const v1, 0x10000555

    goto :goto_2

    :cond_2
    const v1, 0x10000333

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_1

    :goto_2
    return v1

    .line 3
    :cond_5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->W()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    return v1

    :cond_6
    if-eqz v0, :cond_7

    add-int/lit8 p1, p1, -0x1

    .line 4
    :cond_7
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_8

    .line 5
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/i;->F(I)I

    move-result v2

    goto :goto_3

    :cond_8
    sub-int/2addr p1, v0

    .line 6
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->V()Z

    move-result v0

    if-ge p1, v0, :cond_9

    goto :goto_3

    :cond_9
    const v2, 0x10000222

    :goto_3
    return v2
.end method

.method public h(ILjava/lang/Object;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->K()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/i;->v(I)V

    return-void
.end method

.method public h0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->getItemViewType()I

    move-result v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/i;->X(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/i;->j0(Landroidx/recyclerview/widget/RecyclerView$y;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/i;->f(Landroidx/recyclerview/widget/RecyclerView$y;)V

    :goto_0
    return-void
.end method

.method public final i(Landroid/view/View;)I
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/chad/library/adapter/base/i;->k(Lcom/chad/library/adapter/base/i;Landroid/view/View;IIILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final i0(Landroid/view/View;)V
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "emptyView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->getItemCount()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/chad/library/adapter/base/i;->m:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "mEmptyLayout"

    const/4 v5, 0x0

    if-nez v1, :cond_3

    .line 3
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chad/library/adapter/base/i;->m:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-nez v6, :cond_0

    move-object v7, v5

    goto :goto_0

    .line 5
    :cond_0
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v7, v8, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :goto_0
    if-nez v7, :cond_1

    .line 6
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v7, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 7
    :cond_1
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    throw v5

    .line 8
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    iget-object v6, p0, Lcom/chad/library/adapter/base/i;->m:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 10
    iget v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 11
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 12
    iget-object v1, p0, Lcom/chad/library/adapter/base/i;->m:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    const/4 v1, 0x0

    .line 13
    :goto_2
    iget-object v6, p0, Lcom/chad/library/adapter/base/i;->m:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 14
    iget-object v6, p0, Lcom/chad/library/adapter/base/i;->m:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_8

    invoke-virtual {v6, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 15
    iput-boolean v3, p0, Lcom/chad/library/adapter/base/i;->e:Z

    if-eqz v1, :cond_7

    .line 16
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->U()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 17
    iget-boolean p1, p0, Lcom/chad/library/adapter/base/i;->c:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->W()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    .line 18
    :cond_5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->getItemCount()I

    move-result p1

    if-le p1, v0, :cond_6

    .line 19
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_3

    .line 20
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_7
    :goto_3
    return-void

    .line 21
    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    throw v5

    .line 22
    :cond_9
    invoke-static {v4}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    throw v5

    .line 23
    :cond_a
    invoke-static {v4}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    throw v5

    .line 24
    :cond_b
    invoke-static {v4}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    throw v5
.end method

.method public final j(Landroid/view/View;II)I
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->l:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-string v4, "mFooterLayout"

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chad/library/adapter/base/i;->l:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->l:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/4 v5, -0x2

    if-ne p3, v1, :cond_0

    .line 5
    new-instance p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p3, v2, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p3, v5, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 7
    :goto_0
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    throw v3

    .line 8
    :cond_2
    :goto_1
    iget-object p3, p0, Lcom/chad/library/adapter/base/i;->l:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    if-ltz p2, :cond_3

    if-le p2, p3, :cond_4

    :cond_3
    move p2, p3

    .line 9
    :cond_4
    iget-object p3, p0, Lcom/chad/library/adapter/base/i;->l:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_7

    invoke-virtual {p3, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 10
    iget-object p1, p0, Lcom/chad/library/adapter/base/i;->l:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 11
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->J()I

    move-result p1

    if-eq p1, v2, :cond_5

    .line 12
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_5
    return p2

    .line 13
    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    throw v3

    .line 14
    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    throw v3

    .line 15
    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    throw v3
.end method

.method protected j0(Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f(Z)V

    :cond_0
    return-void
.end method

.method public final k0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/i;->c:Z

    return-void
.end method

.method public final l(Landroid/view/View;)I
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/chad/library/adapter/base/i;->o(Lcom/chad/library/adapter/base/i;Landroid/view/View;IIILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public l0(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->b:Ljava/util/List;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    iput-object p1, p0, Lcom/chad/library/adapter/base/i;->b:Ljava/util/List;

    .line 3
    iget-object p1, p0, Lcom/chad/library/adapter/base/i;->v:Lcom/chad/library/adapter/base/m/f;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/m/f;->s()V

    :goto_0
    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/chad/library/adapter/base/i;->n:I

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    iget-object p1, p0, Lcom/chad/library/adapter/base/i;->v:Lcom/chad/library/adapter/base/m/f;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/m/f;->b()V

    :goto_1
    return-void
.end method

.method public final m(Landroid/view/View;I)I
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/chad/library/adapter/base/i;->o(Lcom/chad/library/adapter/base/i;Landroid/view/View;IIILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected m0(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->r:Lcom/chad/library/adapter/base/l/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/chad/library/adapter/base/l/b;->a(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public final n(Landroid/view/View;II)I
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-string v4, "mHeaderLayout"

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chad/library/adapter/base/i;->k:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->k:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/4 v5, -0x2

    if-ne p3, v1, :cond_0

    .line 5
    new-instance p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p3, v2, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p3, v5, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 7
    :goto_0
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    throw v3

    .line 8
    :cond_2
    :goto_1
    iget-object p3, p0, Lcom/chad/library/adapter/base/i;->k:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    if-ltz p2, :cond_3

    if-le p2, p3, :cond_4

    :cond_3
    move p2, p3

    .line 9
    :cond_4
    iget-object p3, p0, Lcom/chad/library/adapter/base/i;->k:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_7

    invoke-virtual {p3, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 10
    iget-object p1, p0, Lcom/chad/library/adapter/base/i;->k:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 11
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->M()I

    move-result p1

    if-eq p1, v2, :cond_5

    .line 12
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_5
    return p2

    .line 13
    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    throw v3

    .line 14
    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    throw v3

    .line 15
    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    throw v3
.end method

.method protected n0(Landroid/view/View;I)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->s:Lcom/chad/library/adapter/base/l/c;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/chad/library/adapter/base/l/c;->a(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)Z

    move-result p1

    :goto_0
    return p1
.end method

.method protected o0(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->p:Lcom/chad/library/adapter/base/l/d;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/chad/library/adapter/base/l/d;->a(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    iput-object p1, p0, Lcom/chad/library/adapter/base/i;->w:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->u:Lcom/chad/library/adapter/base/m/e;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/m/e;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 5
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 6
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->o()Landroidx/recyclerview/widget/GridLayoutManager$b;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/chad/library/adapter/base/i$a;

    invoke-direct {v2, p0, p1, v1}, Lcom/chad/library/adapter/base/i$a;-><init>(Lcom/chad/library/adapter/base/i;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$b;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->t(Landroidx/recyclerview/widget/GridLayoutManager$b;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$y;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/i;->c0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$y;ILjava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/i;->d0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$y;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/i;->f0(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/chad/library/adapter/base/i;->w:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/i;->h0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    return-void
.end method

.method protected p(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 4
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    const-string p2, "viewHolder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/chad/library/adapter/base/i;->p:Lcom/chad/library/adapter/base/l/d;

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    new-instance v0, Lcom/chad/library/adapter/base/g;

    invoke-direct {v0, p1, p0}, Lcom/chad/library/adapter/base/g;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/i;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    :goto_0
    iget-object p2, p0, Lcom/chad/library/adapter/base/i;->q:Lcom/chad/library/adapter/base/l/f;

    if-nez p2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    new-instance v0, Lcom/chad/library/adapter/base/e;

    invoke-direct {v0, p1, p0}, Lcom/chad/library/adapter/base/e;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/i;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 5
    :goto_1
    iget-object p2, p0, Lcom/chad/library/adapter/base/i;->r:Lcom/chad/library/adapter/base/l/b;

    const/4 v0, 0x1

    const-string v1, "id"

    if-nez p2, :cond_2

    goto :goto_3

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->B()Ljava/util/LinkedHashSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 7
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-nez v3, :cond_4

    .line 9
    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 10
    :cond_4
    new-instance v3, Lcom/chad/library/adapter/base/h;

    invoke-direct {v3, p1, p0}, Lcom/chad/library/adapter/base/h;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/i;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 11
    :cond_5
    :goto_3
    iget-object p2, p0, Lcom/chad/library/adapter/base/i;->s:Lcom/chad/library/adapter/base/l/c;

    if-nez p2, :cond_6

    goto :goto_5

    .line 12
    :cond_6
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->C()Ljava/util/LinkedHashSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 13
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_4

    .line 14
    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->isLongClickable()Z

    move-result v3

    if-nez v3, :cond_8

    .line 15
    invoke-virtual {v2, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 16
    :cond_8
    new-instance v3, Lcom/chad/library/adapter/base/f;

    invoke-direct {v3, p1, p0}, Lcom/chad/library/adapter/base/f;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/i;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_4

    :cond_9
    :goto_5
    return-void
.end method

.method protected p0(Landroid/view/View;I)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->q:Lcom/chad/library/adapter/base/l/f;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/chad/library/adapter/base/l/f;->a(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)Z

    move-result p1

    :goto_0
    return p1
.end method

.method protected q0(Landroid/animation/Animator;I)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "anim"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final setOnItemChildClickListener(Lcom/chad/library/adapter/base/l/b;)V
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/l/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/i;->r:Lcom/chad/library/adapter/base/l/b;

    return-void
.end method

.method public final setOnItemChildLongClickListener(Lcom/chad/library/adapter/base/l/c;)V
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/l/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/i;->s:Lcom/chad/library/adapter/base/l/c;

    return-void
.end method

.method public final setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/l/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/i;->p:Lcom/chad/library/adapter/base/l/d;

    return-void
.end method

.method public final setOnItemLongClickListener(Lcom/chad/library/adapter/base/l/f;)V
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/l/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/i;->q:Lcom/chad/library/adapter/base/l/f;

    return-void
.end method

.method protected final v(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected abstract w(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;TT;)V"
        }
    .end annotation
.end method

.method protected x(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;TT;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "payloads"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected z(Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TVH;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/i;->N(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 4
    new-instance v0, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-direct {v0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/chad/library/adapter/base/i;->y(Ljava/lang/Class;Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    .line 6
    new-instance v0, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-direct {v0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    :cond_2
    return-object v0
.end method
