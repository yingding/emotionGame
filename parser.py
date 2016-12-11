class Parser:
    def parse_file(self, filename):
        """
        function parses (filename) and returns dictionary with emotion-values
        """
        t = open(filename, 'r').read().split()
        values = list(map(lambda x : int(x), t))

        emotions = ['em1',
                    'em2', 
                    'em3', 
                    'em4', 
                    'em5', 
                    'em6',
                    ]

        return dict(zip(emotions, values))
