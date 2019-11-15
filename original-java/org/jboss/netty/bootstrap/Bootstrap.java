package org.jboss.netty.bootstrap;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;
import org.bouncycastle.crypto.tls.AlertDescription;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelHandler;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelPipelineFactory;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.util.ExternalResourceReleasable;

public class Bootstrap implements ExternalResourceReleasable {
    private static final short[] ORDER_TEST_SAMPLES = {682, 807, 637, 358, 570, 828, 407, 319, 105, 41, 563, 544, 518, 298, 418, 50, 156, 769, 984, 503, 191, 578, 309, 710, 327, 720, 591, 939, 374, 707, 43, 463, 227, 174, 30, 531, 135, 930, 190, 823, 925, 835, 328, 239, 415, 500, 144, 460, 83, 774, 921, 4, 95, 468, 687, 493, 991, 436, 245, 742, 149, 821, 142, 782, 297, 918, 917, 424, 978, 992, 79, 906, 535, 515, 850, 80, 125, 378, 307, 883, 836, 160, 27, 630, 668, 226, 560, 698, 467, 829, 476, 163, 977, 367, 325, 184, 204, 312, 486, 53, 179, 592, 252, 750, 893, 517, 937, 124, 148, 719, 973, 566, 405, 449, 452, 777, 349, 761, 167, 783, 220, 802, 117, 604, 216, 363, 120, 621, 219, 182, 817, 244, 438, 465, 934, 888, 628, 209, 631, 17, 870, 679, 826, 945, 680, 848, 974, 573, 626, 865, 109, 317, 91, 494, 965, 473, 725, 388, 302, 936, 660, 150, 122, 949, 295, 392, 63, 634, 772, 143, 990, 895, 538, 59, 541, 32, 669, 321, 811, 756, 82, 955, 953, 636, 390, 162, 688, 444, 70, 590, 183, 745, 543, 666, 951, 642, 747, 765, 98, 469, 884, 929, 178, 721, 994, 840, 353, 726, 940, 759, 624, 919, 667, 629, 272, 979, 326, 608, 453, 11, 322, 347, 647, 354, 381, 746, 472, 890, 249, 536, 733, 404, 170, 959, 34, 899, 195, 651, 140, 856, 201, 237, 51, 933, 268, 849, 294, AlertDescription.unknown_psk_identity, 157, 14, 854, 373, 186, 872, 71, 523, 931, 952, 655, 561, 607, 862, 554, 661, 313, 909, 511, 752, 986, 311, 287, 775, 505, 878, 422, 103, 299, 119, 107, 344, 487, 776, 445, 218, 549, 697, 454, 6, 462, 455, 52, 481, 594, 126, AlertDescription.unrecognized_name, 66, 877, 172, 153, 912, 834, 741, 610, 915, 964, 831, 575, 714, 250, 461, 814, 913, 369, 542, 882, 851, 427, 838, 867, 507, 434, 569, 20, 950, 792, 605, 798, 962, 923, 258, 972, 762, 809, 843, 674, 448, 280, 495, 285, 822, 283, 147, 451, 993, 794, 982, 748, 189, 274, 96, 73, 810, 401, 261, 277, 346, 527, 645, 601, 868, 248, 879, 371, 428, 559, 278, 265, 62, 225, 853, 483, 771, 9, 8, 339, 653, 263, 28, 477, 995, 208, 880, 292, 480, 516, 457, 286, 897, 21, 852, 971, 658, 623, 528, 316, 471, 860, 306, 638, 711, 875, 671, 108, 158, 646, 24, 257, 724, 193, 341, 902, 599, 565, 334, 506, 684, 960, 780, 429, 801, 910, 308, 383, 901, 489, 81, 512, 164, 755, 514, 723, 141, 296, 958, 686, 15, 799, 579, 598, 558, 414, 64, 420, 730, 256, 131, 45, 129, 259, 338, 999, 175, 740, 790, 324, 985, 896, 482, 841, 606, 377, AlertDescription.certificate_unobtainable, 372, 699, 988, 233, 243, 203, 781, 969, 903, 662, 632, 301, 44, 981, 36, 412, 946, 816, 284, 447, 214, 672, 758, 954, 804, 2, 928, 886, 421, 596, 574, 16, 892, 68, 546, 522, 490, 873, 656, 696, 864, 130, 40, 393, 926, 394, 932, 876, 664, 293, 154, 916, 55, 196, 842, 498, 177, 948, 540, 127, 271, AlertDescription.bad_certificate_status_response, 844, 576, 132, 943, 12, 123, 291, 31, 212, 529, 547, 171, 582, 609, 793, 830, 221, 440, 568, 118, 406, 194, 827, 360, 622, 389, 800, 571, 213, 262, 403, 408, 881, 289, 635, 967, 432, 376, 649, 832, 857, 717, 145, 510, 159, 980, 683, 580, 484, 379, 246, 88, 567, 320, 643, 7, 924, 397, 10, 787, 845, 779, 670, 716, 19, 600, 382, 0, 210, 665, 228, 97, 266, 90, 304, 456, 180, 152, 425, 310, 768, 223, 702, 997, 577, 663, 290, 537, 416, 426, 914, 691, 23, 281, 497, 508, 48, 681, 581, 728, 99, 795, 530, 871, 957, 889, 206, 813, 839, 709, 805, 253, 151, 613, 65, 654, 93, 639, 784, 891, 352, 67, 430, 754, 76, 187, 443, 676, 362, 961, 874, 330, 331, 384, 85, 217, 855, 818, 738, 361, 314, 3, 615, 520, 355, 920, 689, 22, 188, 49, 904, 935, 136, 475, 693, 749, 519, 812, 100, 207, 963, 364, 464, 572, 731, 230, 833, 385, 499, 545, 273, 232, 398, 478, 975, 564, 399, 504, 35, 562, 938, 211, 26, 337, 54, 614, 586, 433, 450, 763, 238, 305, 941, 370, 885, 837, 234, AlertDescription.unsupported_extension, 137, 395, 368, 695, 342, 907, 396, 474, 176, 737, 796, 446, 37, 894, 727, 648, 431, 1, 366, 525, 553, 704, 329, 627, 479, 33, 492, 260, 241, 86, 185, 491, 966, 247, 13, 587, 602, 409, 335, 650, 235, 611, 470, 442, 597, 254, 343, 539, 146, 585, 593, 641, 770, 94, 976, 705, 181, 255, 315, 718, 526, 987, 692, 983, 595, 898, 282, 133, 439, 633, 534, 861, 269, 619, 677, 502, 375, 224, 806, 869, 417, 584, 612, 803, 58, 84, 788, 797, 38, 700, 751, 603, 652, 57, 240, 947, 350, 270, 333, 116, 736, 69, 74, 104, 767, 318, 735, 859, 357, 555, 411, 267, 712, 675, 532, 825, 496, 927, 942, 102, 46, 192, AlertDescription.bad_certificate_hash_value, 744, 138, 998, 72, 617, 134, 846, 166, 77, 900, 5, 303, 387, 400, 47, 729, 922, 222, 197, 351, 509, 524, 165, 485, 300, 944, 380, 625, 778, 685, 29, 589, 766, 161, 391, 423, 42, 734, 552, 215, 824, 908, 229, 89, 251, 199, 616, 78, 644, 242, 722, 25, 437, 732, 956, 275, 200, 970, 753, 791, 336, 556, 847, 703, 236, 715, 75, 863, 713, 785, 911, 786, 620, 551, 413, 39, 739, 820, 808, 764, 701, 819, 173, 989, 345, 690, 459, 60, 106, 887, 996, 365, 673, 968, 513, 18, 419, 550, 588, 435, 264, 789, 340, 659, 466, 356, 288, 56, 708, 557, 488, 760, 332, 402, 168, 202, 521, 757, 205, 706, 441, 773, 231, 583, 386, 678, 618, 815, 279, 87, 533, 61, 548, 92, 169, 694, 905, 198, 121, 410, 139, 657, 640, 743, 128, 458, 866, 501, 348, 155, 276, 101, 858, 323, 359};
    private volatile ChannelFactory factory;
    private volatile Map<String, Object> options = new HashMap();
    private volatile ChannelPipeline pipeline = Channels.pipeline();
    private volatile ChannelPipelineFactory pipelineFactory = Channels.pipelineFactory(this.pipeline);

    protected Bootstrap() {
    }

    protected Bootstrap(ChannelFactory channelFactory) {
        setFactory(channelFactory);
    }

    public ChannelFactory getFactory() {
        ChannelFactory channelFactory = this.factory;
        if (channelFactory != null) {
            return channelFactory;
        }
        throw new IllegalStateException("factory is not set yet.");
    }

    public void setFactory(ChannelFactory channelFactory) {
        if (channelFactory == null) {
            throw new NullPointerException("factory");
        } else if (this.factory != null) {
            throw new IllegalStateException("factory can't change once set.");
        } else {
            this.factory = channelFactory;
        }
    }

    public ChannelPipeline getPipeline() {
        ChannelPipeline channelPipeline = this.pipeline;
        if (channelPipeline != null) {
            return channelPipeline;
        }
        throw new IllegalStateException("getPipeline() cannot be called if setPipelineFactory() was called.");
    }

    public void setPipeline(ChannelPipeline channelPipeline) {
        if (channelPipeline == null) {
            throw new NullPointerException("pipeline");
        }
        this.pipeline = channelPipeline;
        this.pipelineFactory = Channels.pipelineFactory(channelPipeline);
    }

    public Map<String, ChannelHandler> getPipelineAsMap() {
        ChannelPipeline channelPipeline = this.pipeline;
        if (channelPipeline != null) {
            return channelPipeline.toMap();
        }
        throw new IllegalStateException("pipelineFactory in use");
    }

    public void setPipelineAsMap(Map<String, ChannelHandler> map) {
        if (map == null) {
            throw new NullPointerException("pipelineMap");
        } else if (!isOrderedMap(map)) {
            throw new IllegalArgumentException("pipelineMap is not an ordered map. Please use " + LinkedHashMap.class.getName() + '.');
        } else {
            ChannelPipeline pipeline2 = Channels.pipeline();
            for (Entry entry : map.entrySet()) {
                pipeline2.addLast((String) entry.getKey(), (ChannelHandler) entry.getValue());
            }
            setPipeline(pipeline2);
        }
    }

    public ChannelPipelineFactory getPipelineFactory() {
        return this.pipelineFactory;
    }

    public void setPipelineFactory(ChannelPipelineFactory channelPipelineFactory) {
        if (channelPipelineFactory == null) {
            throw new NullPointerException("pipelineFactory");
        }
        this.pipeline = null;
        this.pipelineFactory = channelPipelineFactory;
    }

    public Map<String, Object> getOptions() {
        return new TreeMap(this.options);
    }

    public void setOptions(Map<String, Object> map) {
        if (map == null) {
            throw new NullPointerException("options");
        }
        this.options = new HashMap(map);
    }

    public Object getOption(String str) {
        if (str != null) {
            return this.options.get(str);
        }
        throw new NullPointerException("key");
    }

    public void setOption(String str, Object obj) {
        if (str == null) {
            throw new NullPointerException("key");
        } else if (obj == null) {
            this.options.remove(str);
        } else {
            this.options.put(str, obj);
        }
    }

    public void releaseExternalResources() {
        ChannelFactory channelFactory = this.factory;
        if (channelFactory != null) {
            channelFactory.releaseExternalResources();
        }
    }

    public void shutdown() {
        ChannelFactory channelFactory = this.factory;
        if (channelFactory != null) {
            channelFactory.shutdown();
        }
    }

    static boolean isOrderedMap(Map<?, ?> map) {
        Class cls = map.getClass();
        if (LinkedHashMap.class.isAssignableFrom(cls)) {
            return true;
        }
        for (Class cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
            for (Class name : cls2.getInterfaces()) {
                if (name.getName().endsWith("OrderedMap")) {
                    return true;
                }
            }
        }
        try {
            Map map2 = (Map) cls.newInstance();
            ArrayList arrayList = new ArrayList();
            String str = "dummyValue";
            for (short valueOf : ORDER_TEST_SAMPLES) {
                String valueOf2 = String.valueOf(valueOf);
                map2.put(valueOf2, str);
                arrayList.add(valueOf2);
                Iterator it = arrayList.iterator();
                for (Object equals : map2.keySet()) {
                    if (!((String) it.next()).equals(equals)) {
                        return false;
                    }
                }
            }
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
