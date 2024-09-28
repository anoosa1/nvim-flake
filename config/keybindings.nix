{
  keymaps = [
    {
      action = "<cmd>BufferLineCycleNext<CR>";
      key = "<leader>bn";
      mode = "n";
      options = {
        silent = true;
        desc = "Cycle to next buffer";
      };
    }
    {
      action = "<cmd>BufferLineCyclePrev<CR>";
      key = "<leader>bp";
      mode = "n";
      options = {
        silent = true;
        desc = "Cycle to previous buffer";
      };
    }
    {
      action = "<cmd>BufferLinePick<CR>";
      key = "<leader>bc";
      mode = "n";
      options = {
        silent = true;
        desc = "Pick buffer";
      };
    }
    {
      action = "<cmd>BufferLineSortByExtension<CR>";
      key = "<leader>bse";
      mode = "n";
      options = {
        silent = true;
        desc = "Sort buffers by extension";
      };
    }
    {
      action = "<cmd>BufferLineSortByDirectory<CR>";
      key = "<leader>bsd";
      mode = "n";
      options = {
        silent = true;
        desc = "Sort buffers by directory";
      };
    }
    {
      action = "<cmd>lua require'bufferline'.sort_buffers_by(function(buf_a, buf_b) return buf_a.id < buf_b.id end)<CR>";
      key = "<leader>bsi";
      mode = "n";
      options = {
        silent = true;
        desc = "Sort buffers by ID";
      };
    }
    {
      action = "<cmd>BufferLineMoveNext<CR>";
      key = "<leader>bmn";
      mode = "n";
      options = {
        silent = true;
        desc = "Move buffer to next position";
      };
    }
    {
      action = "<cmd>BufferLineMovePrev<CR>";
      key = "<leader>bmp";
      mode = "n";
      options = {
        silent = true;
        desc = "Move buffer to previous position";
      };
    }
    {
      action = "<cmd>BufferLineGoToBuffer 1<CR>";
      key = "<leader>b1";
      mode = "n";
      options = {
        silent = true;
        desc = "Go to buffer 1";
      };
    }
    {
      action = "<cmd>BufferLineGoToBuffer 2<CR>";
      key = "<leader>b2";
      mode = "n";
      options = {
        silent = true;
        desc = "Go to buffer 2";
      };
    }
    {
      action = "<cmd>BufferLineGoToBuffer 3<CR>";
      key = "<leader>b3";
      mode = "n";
      options = {
        silent = true;
        desc = "Go to buffer 3";
      };
    }
    {
      action = "<cmd>BufferLineGoToBuffer 4<CR>";
      key = "<leader>b4";
      mode = "n";
      options = {
        silent = true;
        desc = "Go to buffer 4";
      };
    }
    {
      action = "<cmd>BufferLineGoToBuffer 5<CR>";
      key = "<leader>b5";
      mode = "n";
      options = {
        silent = true;
        desc = "Go to buffer 5";
      };
    }
    {
      action = "<cmd>BufferLineGoToBuffer 6<CR>";
      key = "<leader>b6";
      mode = "n";
      options = {
        silent = true;
        desc = "Go to buffer 6";
      };
    }
    {
      action = "<cmd>BufferLineGoToBuffer 7<CR>";
      key = "<leader>b7";
      mode = "n";
      options = {
        silent = true;
        desc = "Go to buffer 7";
      };
    }
    {
      action = "<cmd>BufferLineGoToBuffer 8<CR>";
      key = "<leader>b8";
      mode = "n";
      options = {
        silent = true;
        desc = "Go to buffer 8";
      };
    }
    {
      action = "<cmd>BufferLineGoToBuffer 9<CR>";
      key = "<leader>b9";
      mode = "n";
      options = {
        silent = true;
        desc = "Go to buffer 9";
      };
    }
  ];
}
